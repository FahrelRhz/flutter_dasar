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
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.shortestSide,
              height: MediaQuery.of(context).size.shortestSide,
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                color: Colors.blue[400],
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[ 
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(
                            fontSize: 16, // Ukuran teks label
                            fontWeight: FontWeight.bold, // Membuat label lebih menonjol
                            color: Colors.white, // Warna teks label
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: const Color.fromARGB(255, 255, 255, 255)), // Border saat fokus
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: const Color.fromARGB(255, 255, 255, 255)), // Border saat tidak fokus
                          ),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(
                            fontSize: 16, // Ukuran teks label
                            fontWeight: FontWeight.bold, // Membuat label lebih menonjol
                            color: Colors.white, // Warna teks label
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: const Color.fromARGB(255, 255, 255, 255)), // Border saat fokus
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: const Color.fromARGB(255, 255, 255, 255)), // Border saat tidak fokus
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Page2()));
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
