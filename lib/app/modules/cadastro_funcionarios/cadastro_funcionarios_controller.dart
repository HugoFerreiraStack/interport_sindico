import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'cadastro_funcionarios_controller.g.dart';

@Injectable()
class CadastroFuncionariosController = _CadastroFuncionariosControllerBase
    with _$CadastroFuncionariosController;

abstract class _CadastroFuncionariosControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
