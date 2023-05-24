import 'package:payment_aggregator/screens/components/button.dart';
import 'package:payment_aggregator/screens/splash_screen_1.dart';
import 'package:payment_aggregator/screens/splash_screen_2.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CarouselController buttonCarouselController = CarouselController();
  int _currentIndex = 0;
  List cardList = [
    const SplashScreen1(),
    const SplashScreen2(),
  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        CarouselSlider(
          carouselController: buttonCarouselController,
          options: CarouselOptions(
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
              enlargeCenterPage: true,
              aspectRatio: 9 / 16,
              scrollPhysics: const NeverScrollableScrollPhysics(),
              enableInfiniteScroll: false,
              height: MediaQuery.of(context).size.height * 0.80),
          items: cardList.map((card) {
            return Container(
              child: card,
            );
          }).toList(),
        ),
        AnimatedSmoothIndicator(
          activeIndex: _currentIndex,
          count: cardList.length,
          effect: const WormEffect(
              activeDotColor: Colors.blueAccent,
              dotColor: Color(0xFFAACBFD),
              dotHeight: 10,
              dotWidth: 10),
        ),
        if (_currentIndex == 0)
          Padding(
              padding: const EdgeInsets.only(left: 41, right: 41, top: 20),
              child: Button1(
                  onTap: () {
                    buttonCarouselController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
                  },
                  buttonName: 'Next'))
        else
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 41, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Button1(
                      onTap: () {
                        Get.toNamed('/signin');
                      },
                      buttonName: 'Get Started'),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: const Color(0xFF000000),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.toNamed('/signin');
                        },
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: Size.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                        child: Text(
                          'Sign In',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: const Color(0xFF00A3B4),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ))
      ],
    ));
  }
}
