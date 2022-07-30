import 'package:my_coach_app/modules/app/data/datasources/user_datasource.dart';
import 'package:my_coach_app/modules/app/data/models/user_model.dart';
import 'package:my_coach_app/shared/result_wrapper/result_wrapper.dart';

abstract class UserUseCase {
  Future<Result<UserModel>> call(UserModel userModel);
}

class UserUseCaseImpl implements UserUseCase {
  final UserDatasource datadource;

  UserUseCaseImpl(this.datadource);

  @override
  Future<Result<UserModel>> call(UserModel userModel) async {
    return datadource(userModel);
  }
}
