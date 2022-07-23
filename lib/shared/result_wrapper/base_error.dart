import 'package:my_coach_app/shared/result_wrapper/model/api_error_model.dart';

class BaseError extends Error {
  final String message;
  ApiErrorModel? errorModel;

  BaseError(this.message, {this.errorModel});

  @override
  String toString() {
    return message;
  }
}
