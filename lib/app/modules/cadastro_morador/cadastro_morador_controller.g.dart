// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cadastro_morador_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $CadastroMoradorController = BindInject(
  (i) => CadastroMoradorController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CadastroMoradorController on _CadastroMoradorControllerBase, Store {
  final _$valueAtom = Atom(name: '_CadastroMoradorControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_CadastroMoradorControllerBaseActionController =
      ActionController(name: '_CadastroMoradorControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_CadastroMoradorControllerBaseActionController
        .startAction(name: '_CadastroMoradorControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_CadastroMoradorControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
