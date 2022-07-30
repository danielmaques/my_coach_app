import 'package:flutter_modular/flutter_modular.dart';
import 'package:my_coach_app/modules/app/data/datasources/user_datasource_impl.dart';
import 'package:my_coach_app/modules/login/login_module.dart';
import 'package:my_coach_app/modules/login/login_route.dart';
import 'package:my_coach_app/modules/login/ui/login_page.dart';

import 'domain/usecases/user_usecase.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [];

  @override
  List<Bind> get binds => [
        // User
        Bind.factory((i) => UserDatasourceImpl()),
        Bind.factory((i) => UserUseCaseImpl(i())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const LoginPage()),
        ModuleRoute(LoginRoute.rootRoute, module: LoginModule()),
      ];
}
