import 'package:flutter/material.dart';
import 'page3.dart';

class Page2 extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String school;
  final String role;

  const Page2({
    Key? key,
    required this.firstName,
    required this.lastName,
    required this.school,
    required this.role,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/code.jpg'),
              fit: BoxFit.cover,
        )),
        child: Stack(alignment: Alignment.center, children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.shortestSide,
            padding: const EdgeInsets.all(20.0),
            alignment: Alignment.center,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const CircleAvatar(
                      radius: 100.0,
                      backgroundImage: AssetImage('assets/images/meee.jpg'),
                    ),
                    Text(
                      "$firstName $lastName",
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    Text(
                      school,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      role,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Page3()),
                        );
                      },
                      child: const Text("See More")
                    ),
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
