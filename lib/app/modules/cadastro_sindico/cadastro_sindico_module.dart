import 'package:flutter/src/widgets/framework.dart';

import 'cadastro_sindico_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'cadastro_sindico_page.dart';

class CadastroSindicoModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        $CadastroSindicoController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => CadastroSindicoPage()),
      ];

  static Inject get to => Inject<CadastroSindicoModule>.of();

  @override
  // TODO: implement view
  Widget get view => CadastroSindicoPage();
}
