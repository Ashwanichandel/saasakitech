import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/home.dart';
import 'package:flutter_application_2/screens/search.dart';
import "package:google_fonts/google_fonts.dart";

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MainPage> {
  var widgets = <Widget>[Home(), Search()];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 40, 47, 51),
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            widgets[selectedIndex],
            Positioned(
              bottom: 30,
              child: Center(
                child: Container(
                  width: width / 1.2,
                  height: 60,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = 0;
                            });
                          },
                          child: Icon(
                            Icons.home_outlined,
                            color: Colors.white,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = 1;
                            });
                          },
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          Icons.music_note,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ]),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color.fromARGB(177, 114, 113, 113),
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

class RoundedStackItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://i.pinimg.com/550x/9e/11/67/9e116714a33851fbadeb9f3dbef7fcdd.jpg")),
            color: Color.fromARGB(255, 228, 63, 34),
            borderRadius: BorderRadius.circular(50),
          ),
        ),
       
      ],
    );
  }
}
