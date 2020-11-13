import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'cadastro_funcionarios_controller.dart';

class CadastroFuncionariosPage extends StatefulWidget {
  final String title;
  const CadastroFuncionariosPage({Key key, this.title = "CadastroFuncionarios"})
      : super(key: key);

  @override
  _CadastroFuncionariosPageState createState() =>
      _CadastroFuncionariosPageState();
}

class _CadastroFuncionariosPageState extends ModularState<
    CadastroFuncionariosPage, CadastroFuncionariosController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
