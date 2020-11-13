import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'cadastro_sindico_controller.g.dart';

@Injectable()
class CadastroSindicoController = _CadastroSindicoControllerBase
    with _$CadastroSindicoController;

abstract class _CadastroSindicoControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
