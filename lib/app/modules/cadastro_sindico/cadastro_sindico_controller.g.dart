// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cadastro_sindico_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $CadastroSindicoController = BindInject(
  (i) => CadastroSindicoController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CadastroSindicoController on _CadastroSindicoControllerBase, Store {
  final _$valueAtom = Atom(name: '_CadastroSindicoControllerBase.value');

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

  final _$_CadastroSindicoControllerBaseActionController =
      ActionController(name: '_CadastroSindicoControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_CadastroSindicoControllerBaseActionController
        .startAction(name: '_CadastroSindicoControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_CadastroSindicoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
