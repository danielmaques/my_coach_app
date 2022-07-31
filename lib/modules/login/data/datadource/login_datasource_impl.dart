import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_coach_app/modules/login/data/datadource/login_datadource.dart';
import 'package:my_coach_app/shared/result_wrapper/base_error.dart';
import 'package:my_coach_app/shared/result_wrapper/result_wrapper.dart';

class LoginDatasourceImpl extends LoginDatasource {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Future<Result<String>> call(String email, String password) async {
    try {
      final createUser =
          await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return ResultSuccess(createUser.user!.uid);
    } catch (error) {
      return ResultError(BaseError('Erro na criacao de usuario $error'));
    }
  }
}
