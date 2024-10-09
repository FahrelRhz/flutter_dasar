import 'package:flutter/material.dart';
import 'package:profil_page/page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Form"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                hintText: "Email"
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Password"
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => Page2()
                  )
                );
              },
              child: Text("Login"),
            )
          ],
        ),
      ),
    );
  }
}