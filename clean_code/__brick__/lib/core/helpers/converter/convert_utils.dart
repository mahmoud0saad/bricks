import 'package:{{package_name.snakeCase()}}/core/errors/failure.dart';
import 'package:{{package_name.snakeCase()}}/core/shared_widgets/dialogs/toast_utils.dart';
import 'package:dartz/dartz.dart';

class ConvertUtils {
  ConvertUtils._();

  static dynamic foldEitherResponse<T>(
    Either<Failure, T> response,
    Function(T result) onSuccess, {
    Function(Failure error)? onError,
  }) {
    return response.fold(
      (l) {
        if (onError != null) {
          return onError(l);
        } else {
          ToastUtils.showSimpleToast(l.message);
        }
      },
      (r) {
        return onSuccess(r);
      },
    );
  }
}
