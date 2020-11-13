import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'cadastro_morador_controller.g.dart';

@Injectable()
class CadastroMoradorController = _CadastroMoradorControllerBase
    with _$CadastroMoradorController;

abstract class _CadastroMoradorControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
