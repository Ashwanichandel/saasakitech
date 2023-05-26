import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main.dart';

class CustomTabView extends StatefulWidget {
  @override
  _CustomTabViewState createState() => _CustomTabViewState();
}

class _CustomTabViewState extends State<CustomTabView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<AudioPlayer> player = [];
  final List<String> _tabs = ['Tabsdfsd 1', 'Tab 2', 'Tab 3', 'Tab 4', 'Tab 5'];
  final List<String> audioUrl = [];

  @override
  void initState() {
    super.initState();
    audioUrl.add(
        "https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3");
    audioUrl.add(
        "https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3");
    audioUrl.add(
        "https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3");
    player.add(AudioPlayer());
    player.add(AudioPlayer());
    player.add(AudioPlayer());

    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          isScrollable: true,
          onTap: (value) {
            setState(() {});
          },
          controller: _tabController,
          indicator: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(20)),
          tabs: _tabs.map((String tab) {
            return Tab(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: Container(
                  child: Text(
                    tab,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                ),
              ),
            );
          }).toList(),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: _tabs.map((String tab) {
              return Center(
                child: SizedBox(
                  child: ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            leading: InkWell(
                              onTap: () async {
                                var state = player[index].state;
                                if (state == PlayerState.playing)
                                  player[index].pause();
                                else
                                  await player[index]
                                      .play(UrlSource(audioUrl[index]));
                              },
                              child: Container(
                                height: 1010,
                                width: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            "https://i.pinimg.com/550x/9e/11/67/9e116714a33851fbadeb9f3dbef7fcdd.jpg"))),
                              ),
                            ),
                            title: Text(
                              "I am Goog(Blue)",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 2),
                                  child: Icon(
                                    Icons.person,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                ),
                                Text(
                                  "David guetta",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            trailing: Icon(
                              Icons.favorite_border_outlined,
                              color: Colors.white,
                            ),
                          ),
                        );
                      }),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
