import 'package:my_coach_app/shared/result_wrapper/result_wrapper.dart';

abstract class LoginDatasource {
  Future<Result<String>> call(String email, String password);
}
