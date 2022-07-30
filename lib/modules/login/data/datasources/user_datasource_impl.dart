import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_coach_app/modules/app/data/datasources/user_datasource.dart';
import 'package:my_coach_app/modules/app/data/models/user_model.dart';
import 'package:my_coach_app/shared/helpers/db_firestore_helper.dart';
import 'package:my_coach_app/shared/result_wrapper/result_wrapper.dart';
import 'package:my_coach_app/shared/services/auth_service.dart';

class UserDatasourceImpl extends UserDatasource {
  late FirebaseFirestore db;
  late AuthServices auth;

  @override
  Future<ResultSuccess<UserModel>> call(UserModel userModel) async {
    db = DBFirestoreHelper.get();
    var body = db.collection('users/${auth.usuario!.uid}').doc().set({
      "email": userModel.email,
      "genre": userModel.genre,
      "height": userModel.height,
      "kg": userModel.kg,
      "name": userModel.name,
      "phone_number": userModel.phone_number,
      "year_of_birth": userModel.year_of_birth,
    });
    try {
      return ResultSuccess(UserModel.fromJson(body.toString()));
    } catch (e) {
      return ResultSuccess(UserModel.fromJson('$body$e'));
    }
  }
}
