import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neon_colors/constants.dart';
import 'package:neon_colors/widgets/cast_item.dart';
import 'package:neon_colors/widgets/rating_bar.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class WatchScreen extends StatelessWidget {
  const WatchScreen({
    super.key,
    required this.details,
  });

  final Map details;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    top: 0,
                    child: Container(
                      height: 565.0,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(details["poster"]),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            const Color(0xff000000),
                            kColorBackground
                          ],
                          stops: const [0.475, 0.535, 1],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.only(
                          top: 52.0, left: 20.0, right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              height: 44.0,
                              width: 44.0,
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff).withOpacity(0.2),
                                borderRadius: BorderRadius.circular(50.0),
                                border: Border.all(
                                  width: 3.0,
                                  color: const Color(0xffffffff),
                                ),
                              ),
                              child: Center(
                                child: SvgPicture.asset(kIconBack),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 44.0,
                              width: 44.0,
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff).withOpacity(0.2),
                                borderRadius: BorderRadius.circular(50.0),
                                border: Border.all(
                                  width: 3.0,
                                  color: const Color(0xffffffff),
                                ),
                              ),
                              child: Center(
                                child: SvgPicture.asset(kIconMenu),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 347,
                    right: 9,
                    child: OutlineGradientButton(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          kColorNeonPink,
                          kColorNeonCyan,
                        ],
                      ),
                      strokeWidth: 3,
                      padding: EdgeInsets.zero,
                      radius: const Radius.circular(30),
                      child: SizedBox(
                        width: 60.0,
                        height: 60.0,
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  kColorNeonPink.withOpacity(0.3),
                                  kColorNeonCyan.withOpacity(0.3),
                                ],
                              ),
                            ),
                            child: Center(
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color:
                                      const Color(0xffffffff).withOpacity(0.15),
                                ),
                                child: Center(
                                  child: SvgPicture.asset(kIconPlay),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 384,
                    left: 0,
                    right: 0,
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.symmetric(horizontal: 75.0),
                          child: Column(
                            children: [
                              Text(
                                details["title"],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color:
                                      const Color(0xffffffff).withOpacity(0.85),
                                  fontFamily: "OpenSans",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24.0,
                                  letterSpacing: -0.3,
                                  height: 1.36,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: Text(
                                  "${details["year"]}•${details["category"]}•${details["duration"]}",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: const Color(0xffffffff)
                                        .withOpacity(0.75),
                                    fontFamily: "OpenSans",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13.0,
                                    letterSpacing: -0.3,
                                    height: 1.36,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: RatingBar(rating: details["rating"]),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: Text(
                                  details["description"],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: const Color(0xffffffff)
                                        .withOpacity(0.75),
                                    fontFamily: "OpenSans",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.0,
                                    letterSpacing: -0.3,
                                    height: 1.36,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 26.0),
                          child: Container(
                            height: 2,
                            width: 290,
                            color: const Color(0xffffffff).withOpacity(0.15),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 20.0, left: 25.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Casts",
                              style: TextStyle(
                                color: Color(0xffffffff),
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.w700,
                                fontSize: 20.0,
                                letterSpacing: 0.38,
                                height: 1.36,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18.0),
                          child: Column(
                            children: List.generate(
                              details["cast"].length % 2 == 0
                                  ? (details["cast"].length / 2).toInt()
                                  : (details["cast"].length / 2).toInt() + 1,
                              (i) => Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: List.generate(
                                    details["cast"].length % 2 == 1 &&
                                            i ==
                                                (details["cast"].length / 2)
                                                    .toInt()
                                        ? 1
                                        : 2,
                                    (j) => Padding(
                                      padding: j == 0
                                          ? const EdgeInsets.only(right: 16.0)
                                          : const EdgeInsets.all(0),
                                      child: CastItem(
                                        name: details["cast"][i * 2 + j]
                                            ["name"],
                                        image: details["cast"][i * 2 + j]
                                            ["image"],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
