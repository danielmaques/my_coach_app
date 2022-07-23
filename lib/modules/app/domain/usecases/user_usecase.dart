import 'package:my_coach_app/modules/app/domain/entity/user_entity.dart';
import 'package:my_coach_app/shared/result_wrapper/result_wrapper.dart';

abstract class UserUseCase {
  Future<Result<UserEntity>> call(String user);
}

class UserUseCaseImpl implements UserUseCase {
  @override
  Future<Result<UserEntity>> call(String user) async {
    // TODO: implement call
    throw UnimplementedError();
  }
}
