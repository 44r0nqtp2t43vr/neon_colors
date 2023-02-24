import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:neon_colors/constants.dart';
import 'package:neon_colors/data.dart';
import 'package:neon_colors/screens/watch_screen.dart';
import 'package:neon_colors/widgets/home_navbar.dart';
import 'package:neon_colors/widgets/masked_image.dart';
import 'package:neon_colors/widgets/search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              color: kColorBackground,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: -111,
                    top: -83,
                    child: Container(
                      height: 200.0,
                      width: 200.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kColorNeonCyan.withOpacity(0.5),
                      ),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 100.0,
                          sigmaY: 100.0,
                        ),
                        child: Container(
                          height: 200.0,
                          width: 200.0,
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: -75,
                    top: 285,
                    child: Container(
                      height: 166.0,
                      width: 166.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kColorNeonPink.withOpacity(0.5),
                      ),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 100.0,
                          sigmaY: 100.0,
                        ),
                        child: Container(
                          height: 166.0,
                          width: 166.0,
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: -63,
                    bottom: -113,
                    child: Container(
                      height: 200.0,
                      width: 200.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kColorNeonCyan.withOpacity(0.5),
                      ),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 100.0,
                          sigmaY: 100.0,
                        ),
                        child: Container(
                          height: 200.0,
                          width: 200.0,
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 40,
                    child: Container(
                      height: 60.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kColorNeonCyan.withOpacity(0.8),
                      ),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 40.0,
                          sigmaY: 40.0,
                        ),
                        child: Container(
                          height: 60.0,
                          width: 60.0,
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                  CustomScrollView(
                    physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics(),
                    ),
                    slivers: [
                      SliverList(
                        delegate: SliverChildListDelegate([
                          const Padding(
                            padding: EdgeInsets.only(top: 68.0),
                            child: Text(
                              "What would you\nlike to watch?",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xffffffff),
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.w700,
                                fontSize: 28.0,
                                letterSpacing: -0.3,
                                height: 1.36,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 30.0, left: 24.0, right: 24.0),
                            child: SearchBar(controller: searchController),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 30.0, left: 18.0),
                            child: Text(
                              "New movies",
                              style: TextStyle(
                                color: Color(0xffffffff),
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.w400,
                                fontSize: 17.0,
                                letterSpacing: -0.3,
                                height: 1.36,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 38.0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              physics: const BouncingScrollPhysics(),
                              child: Row(
                                children: List.generate(
                                  newMovieItems.length,
                                  (index) => Padding(
                                    padding: index == 0
                                        ? const EdgeInsets.only(left: 20.0)
                                        : const EdgeInsets.all(0),
                                    child: GestureDetector(
                                      onTap: () {
                                        if (newMovieItems[index]["details"] !=
                                            null) {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => WatchScreen(
                                                details: newMovieItems[index]
                                                    ["details"],
                                              ),
                                            ),
                                          );
                                        }
                                      },
                                      child: SizedBox(
                                        height: 160.0,
                                        width: 144.0,
                                        child: MaskedImage(
                                          asset: newMovieItems[index]["poster"],
                                          mask: index == 0
                                              ? kMaskFirst
                                              : index ==
                                                      newMovieItems.length - 1
                                                  ? kMaskLast
                                                  : kMaskMid,
                                          alignment: newMovieItems[index]
                                              ["alignment"],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 30.0, left: 18.0),
                            child: Text(
                              "Upcoming movies",
                              style: TextStyle(
                                color: Color(0xffffffff),
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.w400,
                                fontSize: 17.0,
                                letterSpacing: -0.3,
                                height: 1.36,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 37.0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              physics: const BouncingScrollPhysics(),
                              child: Row(
                                children: List.generate(
                                  upcMovieItems.length,
                                  (index) => Padding(
                                    padding: index == 0
                                        ? const EdgeInsets.only(left: 20.0)
                                        : const EdgeInsets.all(0),
                                    child: GestureDetector(
                                      child: SizedBox(
                                        height: 160.0,
                                        width: 144.0,
                                        child: MaskedImage(
                                          asset: upcMovieItems[index]["poster"],
                                          mask: index == 0
                                              ? kMaskFirst
                                              : index ==
                                                      upcMovieItems.length - 1
                                                  ? kMaskLast
                                                  : kMaskMid,
                                          alignment: upcMovieItems[index]
                                              ["alignment"],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                  const Positioned(
                    bottom: 0,
                    child: HomeNavigationBar(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
