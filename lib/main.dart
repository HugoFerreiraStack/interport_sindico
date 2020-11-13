import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:interport_sindico/app/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:interport_sindico/app/shared/model/firebase_api.dart';
import 'package:interport_sindico/app/shared/model/users.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(ModularApp(module: AppModule()));
}
