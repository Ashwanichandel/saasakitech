import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_2/screens/tabbar.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    final List<String> productItems = [
      'Macbook Pro 15inch',
      'Macbook Pro 16inch',
      'Macbook Pro 13inch',
      'Macbook Air',
      'Mac Pro',
      'Ipad Pro',
      'Ipad Air',
      'Apple Watch Gen 3',
      'Apple Watch Gen 5'
          'Pro Display XDR',
      'iMac',
      'iMac Pro',
      'Mac Mini'
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.menu,
                color: Colors.white,
              ),
              Padding(
                padding: EdgeInsets.only(right: 3.0),
                child: Container(
                    width: 50,
                    child: Icon(
                      Icons.favorite_outline,
                      color: Colors.white,
                    )),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Trending Rdfight Now',
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 20),
        Expanded(
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) {
              return Container(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 130,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://i.pinimg.com/550x/9e/11/67/9e116714a33851fbadeb9f3dbef7fcdd.jpg")),
                          color: Color.fromARGB(255, 228, 63, 34),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.network(
                          "https://i.pinimg.com/550x/9e/11/67/9e116714a33851fbadeb9f3dbef7fcdd.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          'Hello',
                          style: GoogleFonts.roboto(
                            textStyle:
                                TextStyle(fontSize: 16.0, color: Colors.white),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          'Hello',
                          style: GoogleFonts.roboto(
                            textStyle:
                                TextStyle(fontSize: 12.0, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        Container(
          width: 100,
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
