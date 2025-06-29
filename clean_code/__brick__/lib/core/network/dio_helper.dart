import 'dart:async';
import 'dart:io';

import 'package:{{package_name.snakeCase()}}/core/di/injection.dart';
import 'package:{{package_name.snakeCase()}}/core/helpers/app_debuger.dart';
import 'package:{{package_name.snakeCase()}}/core/network/network_helper.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:injectable/injectable.dart';
import 'package:network_logger/network_logger.dart';

import '../../core/network/api_strings.dart';
import '../storage/secure_storage.dart';
import '../storage/storage_keys.dart';
import 'network_interface.dart';
import 'token_handler.dart';

@LazySingleton(as: BaseNetwork)
class DioHelper implements BaseNetwork {
  DioHelper() {
    // Initialize dio immediately to avoid LateInitializationError
    dio = Dio();

    _initDio();
  }
  late Dio dio;

  Future<void> _buildHeader({Map<String, String>? headers}) async {
    final String? token = await getIt.get<TokenHandler>().getUserToken();

    dio.options.headers.clear();
    dio.options.headers.addAll(
      headers ??
          {'Accept': 'application/json', 'Content-Type': 'application/json'},
    );

    dio.options.headers["Accept-Language"] =
        await getIt.get<SecureStorage>().getValue(StorageKeys.activeLocale) ??
            'en';

    if (token != null) {
      dio.options.headers['X-access-token'] = token;
    }
  }

  @override
  Future get(
    String endPoint, {
    Map<String, dynamic>? queryParameters = const {},
  }) async {
    try {
      await _buildHeader();
      final response = await dio.get(
        endPoint,
        queryParameters: queryParameters,
      );
      return response.data;
    } on DioException catch (error) {
      throw await NetworkUtils.networkExceptions(error);
    }
  }

  @override
  Future delete(String endPoint, int id) async {
    try {
      await _buildHeader();
      final response = await dio.delete("$endPoint/$id");
      return response.data;
    } on DioException catch (error) {
      throw await NetworkUtils.networkExceptions(error);
    }
  }

  @override
  Future post(
    String endPoint, {
    dynamic data,
    ProgressCallback? progressCallback,
  }) async {
    try {
      await _buildHeader();
      final response = await dio.post(
        endPoint,
        data: data,
        onReceiveProgress: progressCallback,
      );
      return response.data;
    } on DioException catch (error) {
      throw await NetworkUtils.networkExceptions(error);
    }
  }

  @override
  Future patch(
    String endPoint, {
    dynamic data,
    ProgressCallback? progressCallback,
  }) async {
    try {
      await _buildHeader();
      final response = await dio.patch(
        endPoint,
        data: data,
        onReceiveProgress: progressCallback,
      );

      return response.data;
    } on DioException catch (error) {
      throw await NetworkUtils.networkExceptions(error);
    }
  }

  @override
  Future update(String endPoint, {Map<String, dynamic>? data}) async {
    try {
      await _buildHeader();
      final response = await dio.patch(endPoint, data: data);
      return response.data;
    } on DioException catch (error) {
      throw await NetworkUtils.networkExceptions(error);
    }
  }

  @override
  Future uploadImages(String endPoint, Map<String, File> data) async {
    try {
      await _buildHeader();
      final FormData formData = FormData.fromMap(data);
      formData.files.add(
        MapEntry(
          data.entries.first.key,
          await MultipartFile.fromFile(data.entries.first.value.path),
        ),
      );

      final response = await dio.post(endPoint, data: formData);
      return response.data;
    } on DioException catch (error) {
      throw await NetworkUtils.networkExceptions(error);
    }
  }

  @override
  void updateBaseUrl(String baseUrl) {
    _initDio(baseUrl: baseUrl);
  }

  void _initDio({String? baseUrl}) {
    try {
      AppDebuger.log("Before: ${dio.options.baseUrl}");

      dio.options = BaseOptions(
        baseUrl: baseUrl ?? ApiStrings.apiUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
      );

      dio.interceptors.clear();
      dio.interceptors.add(DioNetworkLogger());
      
      AppDebuger.log("After: ${dio.options.baseUrl}");
    } catch (e, stackTrace) {
      AppDebuger.log("Error updating base URL: $e");
      AppDebuger.log("Stack trace: $stackTrace");
    }
  }
}
