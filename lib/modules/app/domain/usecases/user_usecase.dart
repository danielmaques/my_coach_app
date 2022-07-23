import 'package:dartz/dartz.dart';
import 'package:my_coach_app/modules/app/domain/errors/user_error.dart';
import 'package:my_coach_app/modules/app/domain/model/user_model.dart';

abstract class UserUseCase {
  Future<Either<UserErros, UserModel>> call(String user);
}

class UserUseCaseImpl implements UserUseCase {
  @override
  Future<Either<UserErros, UserModel>> call(String user) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
