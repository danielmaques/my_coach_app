import 'package:my_coach_app/modules/app/data/models/user_model.dart';
import 'package:my_coach_app/shared/result_wrapper/result_wrapper.dart';

abstract class UserDatasource {
  Future<Result<UserModel>> call(UserModel userModel);
}
