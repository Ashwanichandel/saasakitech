import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_2/component/roundedSearchFiled.dart';
import 'package:flutter_application_2/screens/mainpage.dart';
import 'package:flutter_application_2/screens/tabbar.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 3.0),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: RoundedSearchField()),
                  )
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Trending Right Now',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 300,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(8.0),
                        child: RoundedStackItem(),
                      );
                    }),
              ),
              Expanded(child: CustomTabView()),
            ],
          ),
        ],
      ),
    );
  }
}
