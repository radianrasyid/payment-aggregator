import 'package:payment_aggregator/core/controllers/bottom_bar_controller.dart';
import 'package:payment_aggregator/core/controllers/user_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  UserController userController = Get.put(UserController());
  int currentTab = 0;
  int currentIndex = 0;
  int currentIndexCard = 0;
  BottomBarController bottomBarController = Get.put(BottomBarController());
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        padding: const EdgeInsets.only(top: 70, left: 28, right: 28),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/img/beever.png'),
              const Icon(
                Icons.notification_add_outlined,
                color: Color(0xFF29315B),
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Obx(() => Text(
                'Hello, ${userController.userName.value}',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700, fontSize: 18),
              )),
          const SizedBox(
            height: 10,
          ),
          CarouselSlider(
            items: [
              Container(
                width: 234,
                height: 86,
                margin: const EdgeInsets.only(right: 10),
                child: Card(
                    elevation: 0,
                    margin: const EdgeInsets.all(0),
                    color: const Color(0xFF00A3B4),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16))),
                    child: Container(
                      height: 93,
                      padding: const EdgeInsets.all(17),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Your Available Limit',
                                style: GoogleFonts.dmSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                'Rp 356,000',
                                style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 24,
                                    color: Colors.white),
                              )
                            ],
                          ),
                          const Divider(
                            thickness: 10,
                            color: Colors.white,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                  padding: const EdgeInsets.all(5),
                                  constraints: const BoxConstraints(
                                      maxHeight: 60, maxWidth: 60),
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.history,
                                    color: Colors.white,
                                  )),
                              Text(
                                'History',
                                style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                    )),
              ),
              Container(
                height: 86,
                width: 234,
                margin: const EdgeInsets.only(right: 10),
                child: Card(
                    elevation: 0,
                    margin: const EdgeInsets.all(0),
                    color: const Color(0xFF00A3B4),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16))),
                    child: Container(
                      height: 93,
                      padding: const EdgeInsets.all(17),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Your Available Limit',
                                style: GoogleFonts.dmSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                'Rp 356,000',
                                style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 24,
                                    color: Colors.white),
                              )
                            ],
                          ),
                          const Divider(
                            thickness: 10,
                            color: Colors.white,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                  padding: const EdgeInsets.all(5),
                                  constraints: const BoxConstraints(
                                      maxHeight: 60, maxWidth: 60),
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.history,
                                    color: Colors.white,
                                  )),
                              Text(
                                'History',
                                style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                    )),
              ),
            ],
            options: CarouselOptions(
                height: 86,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndexCard = index;
                  });
                },
                enableInfiniteScroll: false,
                viewportFraction: 0.95,
                scrollPhysics: const BouncingScrollPhysics(),
                disableCenter: true),
          ),
          const SizedBox(
            height: 14,
          ),
          Align(
            alignment: Alignment.center,
            child: AnimatedSmoothIndicator(
              activeIndex: currentIndexCard,
              count: 2,
              effect: const WormEffect(
                  activeDotColor: Colors.blueAccent,
                  dotColor: Color(0xFFAACBFD),
                  dotHeight: 10,
                  dotWidth: 10),
            ),
          ),
          const SizedBox(
            height: 27,
          ),
          Text(
            'Financial Aggregator',
            style: GoogleFonts.plusJakartaSans(
                fontWeight: FontWeight.w700, fontSize: 16, color: Colors.black),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.toNamed('/dashboard/insurance');
                      },
                      icon: Image.asset('assets/icons/dashboard/insurance.png'),
                    ),
                    Text(
                      'Insurance',
                      style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: const Color(0xFF0C192C)),
                    )
                  ],
                ),
              ),
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icons/dashboard/multifinance.png',
                      ),
                    ),
                    Text(
                      'Multifinance',
                      style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: const Color(0xFF0C192C)),
                    )
                  ],
                ),
              ),
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icons/dashboard/dplk.png',
                      ),
                    ),
                    Text(
                      'DPLK',
                      style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: const Color(0xFF0C192C)),
                    )
                  ],
                ),
              ),
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icons/dashboard/kpr.png',
                      ),
                    ),
                    Text(
                      'KPR',
                      style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: const Color(0xFF0C192C)),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icons/dashboard/ipl.png',
                      ),
                    ),
                    Text(
                      'IPL',
                      style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: const Color(0xFF0C192C)),
                    )
                  ],
                ),
              ),
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icons/dashboard/e-money.png',
                      ),
                    ),
                    Text(
                      'E-Money',
                      style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: const Color(0xFF0C192C)),
                    )
                  ],
                ),
              ),
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icons/dashboard/reksadana.png',
                      ),
                    ),
                    Text(
                      'Reksadana',
                      style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: const Color(0xFF0C192C)),
                    )
                  ],
                ),
              ),
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icons/dashboard/menu.png',
                      ),
                    ),
                    Text(
                      'More',
                      style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: const Color(0xFF0C192C)),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 56,
          ),
          Text(
            'Promo and Discount',
            style: GoogleFonts.plusJakartaSans(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: const Color(0xFF0C192C)),
          ),
          const SizedBox(
            height: 24,
          ),
          CarouselSlider(
              items: [
                Card(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: SizedBox(
                        height: 157,
                        width: 276,
                        child: Image.asset(
                          'assets/img/Banner (1).png',
                          fit: BoxFit.fill,
                        ))),
                Card(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: SizedBox(
                        height: 157,
                        width: 276,
                        child: Image.asset(
                          'assets/img/Banner (1).png',
                          fit: BoxFit.fill,
                        ))),
              ],
              options: CarouselOptions(
                height: 157,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                enableInfiniteScroll: false,
                disableCenter: true,
                scrollPhysics: const BouncingScrollPhysics(),
              ))
        ],
      ),
    );
  }
}
