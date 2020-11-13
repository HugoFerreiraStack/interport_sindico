import 'package:flutter/src/widgets/framework.dart';

import 'cadastro_funcionarios_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'cadastro_funcionarios_page.dart';

class CadastroFuncionariosModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        $CadastroFuncionariosController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => CadastroFuncionariosPage()),
      ];

  static Inject get to => Inject<CadastroFuncionariosModule>.of();

  @override
  // TODO: implement view
  Widget get view => CadastroFuncionariosPage();
}
