import 'package:flutter/material.dart';
import './services/parse_server.dart';
import '../ui/app/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ParseServer.connectToServer();
  runApp(const MyApp());
}
