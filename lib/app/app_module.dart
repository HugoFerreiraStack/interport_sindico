import 'package:interport_sindico/app/modules/cadastro_funcionarios/cadastro_funcionarios_module.dart';
import 'package:interport_sindico/app/modules/cadastro_morador/cadastro_morador_module.dart';
import 'package:interport_sindico/app/modules/cadastro_sindico/cadastro_sindico_module.dart';
import 'package:interport_sindico/app/modules/chat/chat_module.dart';
import 'package:interport_sindico/app/modules/login/login_module.dart';
import 'package:interport_sindico/app/modules/start/start_module.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:interport_sindico/app/app_widget.dart';
import 'package:interport_sindico/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $AppController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: LoginModule()),
        ModularRouter('/home', module: HomeModule()),
        ModularRouter('/start', module: StartModule()),
        ModularRouter('/chat', module: ChatModule()),
        ModularRouter('/cad_sindico', module: CadastroSindicoModule()),
        ModularRouter('/cad_morador', module: CadastroMoradorModule()),
        ModularRouter('/cad_funcionarios',
            module: CadastroFuncionariosModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
