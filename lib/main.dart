import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:rootxsoftware_todo_app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('todo');
  runApp(RootXSoftwareTODO());
}
