import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'cadastro_sindico_controller.dart';

class CadastroSindicoPage extends StatefulWidget {
  final String title;
  const CadastroSindicoPage({Key key, this.title = "CadastroSindico"})
      : super(key: key);

  @override
  _CadastroSindicoPageState createState() => _CadastroSindicoPageState();
}

class _CadastroSindicoPageState
    extends ModularState<CadastroSindicoPage, CadastroSindicoController> {
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
