import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


import 'core/Navigation/routing.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initIsar();
  runApp(MyApp());
}

Future<void> initIsar() async {
  //await IsarFlutter.init();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp.router(
        routerConfig: cardAppRouter,
        title: 'Credit Card App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      ),
    );
  }
}
