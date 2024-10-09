import 'package:flutter/material.dart';
import 'page3.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('images/code.jpg'),
            fit: BoxFit.cover,
          )),
          child: Stack(alignment: Alignment.center, children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.shortestSide,
                padding: EdgeInsets.all(20.0),
                alignment: Alignment.center,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  color: Color.fromARGB(255, 255, 255, 255),
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 100.0,
                        backgroundImage: AssetImage('assets/images/meee.jpg'),
                      ),
                      Text(
                        "Fahrel Rhozian Ikhrodi Pratama",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      Text(
                        "Vocational High School Student at SMK Wikrama Bogor",
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(fontSize: 16, color: Colors.blue),
                      ),
                      TextButton(onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Page3()),
                        );
                      }, child:Text("See More")
                      )
                    ],
                  )),
                ))
          ])),
    );
  }
}
