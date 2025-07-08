import 'dart:io';
import 'package:mason/mason.dart';

void run(HookContext context) {
  final feature = context.vars['feature'] as String;
  final usecaseName = context.vars['usecaseName'] as String;
  final paramsName = context.vars['paramsName'] as String;
  final modelName = context.vars['modelName'] as String;
  final featureSnake = feature.snakeCase;
  final projectRoot = _findProjectRoot(Directory.current);
  final modelNamePascal = modelName.pascalCase;
  final isList = context.vars['isList'] == true;

// return type:
  final returnType = isList ? 'List<$modelNamePascal>' : modelNamePascal;
  final returnRight = isList
      ? '(response as List).map((e) => $modelNamePascal.fromJson(e)).toList()'
      : '$modelNamePascal.fromJson(response)';

  final baseDataSourcePath = projectRoot.uri
      .resolve(
        'lib/features/$featureSnake/data/datasources/base_${featureSnake}_datasource.dart',
      )
      .toFilePath(windows: Platform.isWindows);

  final implDataSourcePath = projectRoot.uri
      .resolve(
        'lib/features/$featureSnake/data/datasources/${featureSnake}_datasource_impl.dart',
      )
      .toFilePath(windows: Platform.isWindows);

  final implRepositorySourcePath = projectRoot.uri
      .resolve(
        'lib/features/$featureSnake/data/repositories/${featureSnake}_repository_impl.dart',
      )
      .toFilePath(windows: Platform.isWindows);

  final baseRepositorySourcePath = projectRoot.uri
      .resolve(
        'lib/features/$featureSnake/domain/repositories/base_${featureSnake}_repository.dart',
      )
      .toFilePath(windows: Platform.isWindows);

  final baseDataSourceFile = File(baseDataSourcePath);
  final implDataSourceFile = File(implDataSourcePath);

  final baseRepositoryFile = File(baseRepositorySourcePath);
  final implRepositoryFile = File(implRepositorySourcePath);

  final methodDataSourceBase = 'Future $usecaseName($paramsName params);';

  final methodDataSourceImplementation = '''
  @override
  Future $usecaseName($paramsName params) {
    try {
      return _baseNetwork.post(
        ApiStrings.${usecaseName}Url,
        data: params.toJson(),
      );
    } catch (e) {
      rethrow;
    }
  }
''';

  final methodRepositoryeBase =
      'Future<Either<Failure, $returnType>> $usecaseName($paramsName params);';

  final methodRepositoryImplementation = '''
 @override
  Future<Either<Failure, $returnType>> $usecaseName($paramsName params) async {
    try {
      final response = await ${feature}DataSource.$usecaseName(params);
      return Right($returnRight);
    } on Exception catch (e) {
      return e.handleException<$returnType>();
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  } 
''';

  if (!baseDataSourceFile.existsSync()) {
    baseDataSourceFile.createSync(recursive: true);
    baseDataSourceFile.writeAsStringSync(
        'abstract class Base${feature.pascalCase}Datasource {\n}');
    context.logger.info('📄 Created base datasource file.');
  }

  if (!implDataSourceFile.existsSync()) {
    implDataSourceFile.createSync(recursive: true);
    implDataSourceFile.writeAsStringSync(
        'class ${feature.pascalCase}DatasourceImpl implements Base${feature.pascalCase}Datasource {\n}');
    context.logger.info('📄 Created impl datasource file.');
  }
  if (!baseRepositoryFile.existsSync()) {
    baseRepositoryFile.createSync(recursive: true);
    baseRepositoryFile.writeAsStringSync(
        'abstract class Base${feature.pascalCase}Repository {\n}');
    context.logger.info('📄 Created base Repository file.');
  }

  if (!implRepositoryFile.existsSync()) {
    implRepositoryFile.createSync(recursive: true);
    implRepositoryFile.writeAsStringSync(
        '@Injectable(as: Base${feature.pascalCase}Repository)\nclass ${feature.pascalCase}RepositoryImpl implements Base${feature.pascalCase}Repository {\n}');
    context.logger.info('📄 Created impl Repository file.');
  }

  // Inject into base datasource (interface)
  if (baseDataSourceFile.existsSync()) {
    var baseContent = baseDataSourceFile.readAsStringSync();
    if (!baseContent.contains(methodDataSourceBase)) {
      baseContent =
          baseContent.replaceFirst(RegExp(r'\}'), '  $methodDataSourceBase\n}');
      baseDataSourceFile.writeAsStringSync(baseContent);
      context.logger.info('✅ Method added to base datasource');
    }
  }

  // Inject into implementation datasource
  if (implDataSourceFile.existsSync()) {
    var implContent = implDataSourceFile.readAsStringSync();
    if (!implContent.contains('Future $usecaseName')) {
      implContent = implContent.replaceFirst(
          RegExp(r'\}[\s]*$'), '$methodDataSourceImplementation\n}');
      implDataSourceFile.writeAsStringSync(implContent);
      context.logger.info('✅ Method added to implementation datasource');
    }
  }
  // Inject into base Repository (interface)
  if (baseRepositoryFile.existsSync()) {
    var baseContent = baseRepositoryFile.readAsStringSync();
    if (!baseContent.contains(methodRepositoryeBase)) {
      baseContent = baseContent.replaceFirst(
          RegExp(r'\}'), '  $methodRepositoryeBase\n}');
      baseRepositoryFile.writeAsStringSync(baseContent);
      context.logger.info('✅ Method added to base Repository');
    }
  }

  // Inject into  implementation Repository
  if (implRepositoryFile.existsSync()) {
    var implContent = implRepositoryFile.readAsStringSync();
    if (!implContent.contains('Future $usecaseName')) {
      implContent = implContent.replaceFirst(
          RegExp(r'\}[\s]*$'), '$methodRepositoryImplementation\n}');
      implRepositoryFile.writeAsStringSync(implContent);
      context.logger.info('✅ Method added to implementation Repository');
    }
  }
}

Directory _findProjectRoot(Directory dir) {
  if (File('${dir.path}/pubspec.yaml').existsSync()) {
    return dir;
  }
  final parent = dir.parent;
  if (parent.path == dir.path) {
    throw Exception('❌ Could not find project root (pubspec.yaml)');
  }
  return _findProjectRoot(parent);
}
