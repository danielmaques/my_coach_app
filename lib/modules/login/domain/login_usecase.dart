import 'package:my_coach_app/modules/login/data/datadource/login_datadource.dart';
import 'package:my_coach_app/shared/result_wrapper/result_wrapper.dart';

abstract class LoginUseCase {
  Future<Result<String>> call(String email, String password);
}

class LoginUseCaseImpl implements LoginUseCase {
  final LoginDatasource datadource;

  LoginUseCaseImpl(this.datadource);

  @override
  Future<Result<String>> call(String email, String password) async {
    return datadource(email, password);
  }
}
