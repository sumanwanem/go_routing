import 'package:flutter/material.dart';
import 'package:go_routing/project/routes/app_route_config.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: MyAppRouter().router.routeInformationParser,
      routerDelegate: MyAppRouter().router.routerDelegate,
    );
  }
}
