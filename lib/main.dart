import 'package:flutter/material.dart';
import 'page2.dart';

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
  final _formKey = GlobalKey<FormState>(); // Key untuk form
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController schoolController = TextEditingController();
  final TextEditingController roleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[700],
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.shortestSide,
                  padding: const EdgeInsets.all(20.0),
                  alignment: Alignment.center,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Form(
                        key: _formKey, // Menggunakan form untuk validasi
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const CircleAvatar(
                              radius: 50.0,
                              backgroundImage: NetworkImage(
                                  'https://via.placeholder.com/150'),
                            ),
                            const SizedBox(height: 20),
                            
                            // First Name input
                            TextFormField(
                              controller: firstNameController,
                              decoration: InputDecoration(
                                labelText: "First Name",
                                labelStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.brown[600],
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.brown),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.brown),
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'First Name is required';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 15),
                            
                            // Last Name input
                            TextFormField(
                              controller: lastNameController,
                              decoration: InputDecoration(
                                labelText: "Last Name",
                                labelStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.brown[600],
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.brown),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.brown),
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Last Name is required';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 15),
                            
                            // School input
                            TextFormField(
                              controller: schoolController,
                              decoration: InputDecoration(
                                labelText: "School",
                                labelStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.brown[600],
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.brown),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.brown),
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'School is required';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 15),

                            // Role input
                            TextFormField(
                              controller: roleController,
                              decoration: InputDecoration(
                                labelText: "Role",
                                labelStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.brown[600],
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.brown),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.brown),
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Role is required';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 15),
                            
                            // Submit Button
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                              ),
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Page2(
                                        firstName: firstNameController.text,
                                        lastName: lastNameController.text,
                                        school: schoolController.text,
                                        role: roleController.text,
                                      ),
                                    ),
                                  );
                                }
                              },
                              child: const Text(
                                "Submit",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
