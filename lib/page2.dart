import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background Circles
        Positioned(
          top: -50,
          left: -50,
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 8, 140, 248).withOpacity(0.3),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          top: 200,
          right: -60,
          child: Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 8, 140, 248).withOpacity(0.3),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          top: 500,
          left: 500,
          child: Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 8, 140, 248).withOpacity(0.3),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          top: 200,
          left: 1000,
          child: Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 8, 140, 248).withOpacity(0.3),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          bottom: 50,
          left: -30,
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 8, 140, 248).withOpacity(0.3),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          bottom: -60,
          right: -60,
          child: Container(
            width: 180,
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 8, 140, 248).withOpacity(0.3),
              shape: BoxShape.circle,
            ),
          ),
        ),
        // Main Content
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(20.0),
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const CircleAvatar(
                  radius: 100.0,
                  backgroundImage: AssetImage('assets/images/meee.jpg'),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Fahrel Rhozian Ikhrodi Pratama",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                const SizedBox(height: 10),
                // Card About
                Card(
                  child: ListTile(
                    leading: Icon(Icons.info, color: Colors.blue),
                    title: Text('About'),
                    subtitle: Text("I'm a Frontend Web Developer, I'm good at managing time, never give up and discipline"),
                    onTap: () {
                      // Action for About
                    },
                  ),
                ),
                const SizedBox(height: 10),
                // Card History
                Card(
                  child: ListTile(
                    leading: Icon(Icons.history, color: Colors.green),
                    title: Text('History'),
                    subtitle: Text('I have 6 months internship experience in PT Starcore Indonesia and I once worked on a 5 month contract with my friend'),
                    onTap: () {
                      // Action for History
                    },
                  ),
                ),
                const SizedBox(height: 10),
                // Card Blog
                Card(
                  child: ListTile(
                    leading: Icon(Icons.article, color: Colors.orange),
                    title: Text('Skill'),
                    subtitle: Text("React, Laravel, Python, CSS, Vue, Tailwind, Bootstrap, MYSQL, PostgreSQL, Flutter, PHP"),
                    onTap: () {
                      // Action for Blog
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
