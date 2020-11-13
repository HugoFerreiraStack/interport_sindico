import 'package:flutter/src/widgets/framework.dart';

import 'cadastro_morador_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'cadastro_morador_page.dart';

class CadastroMoradorModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        $CadastroMoradorController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => CadastroMoradorPage()),
      ];

  static Inject get to => Inject<CadastroMoradorModule>.of();

  @override
  // TODO: implement view
  Widget get view => CadastroMoradorPage();
}
