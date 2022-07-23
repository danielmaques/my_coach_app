import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_coach_app/modules/app/domain/model/user_model.dart';
import 'package:my_coach_app/modules/app/domain/usecases/user_usecase.dart';

void main() {
  final usecase = UserUseCaseImpl();

  test('Return user data', () async {
    final result = await usecase('');

    expect(result, isA<UserModel>());
  });
}
