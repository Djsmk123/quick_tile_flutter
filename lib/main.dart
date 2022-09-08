import 'package:flutter/material.dart';


Future<void> main(List<String> arguments) async {
  WidgetsFlutterBinding.ensureInitialized();
  //you can write your own logic like we routes should user navigate
  // Here I am writing my logic if the app launched
  // from quick setting then I am showing message that
  // I am receiving from Native(Kotlin) Code.
  runApp(MyApp(msg: arguments.isNotEmpty?arguments[0]:null));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, this.msg});
  final String? msg;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quick Tile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Scaffold(
        appBar: AppBar(title: const Text("Quick Tile ")),
        body: Center(
          child: Text(msg??"Not Launched from Quick Tile"),
        ),
      )
    );
  }
}
