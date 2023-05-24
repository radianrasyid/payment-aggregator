import 'package:payment_aggregator/core/controllers/bottom_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomAppBarScreen extends StatelessWidget {
  BottomAppBarScreen({super.key, this.data});

  BottomBarController bottomBarController = Get.put(BottomBarController());
  dynamic data = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: data,
        floatingActionButton: Transform.translate(
          offset: const Offset(0, -5),
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: const Color(0xFF00A3B4),
            elevation: 2,
            child: const Icon(Icons.qr_code_rounded),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          elevation: 10,
          shape: const CircularNotchedRectangle(),
          notchMargin: 5,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.20,
                    height: 72,
                    padding: const EdgeInsets.only(bottom: 9),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {
                              bottomBarController.changeIndex(1);
                            },
                            icon: Obx(
                              () => Icon(
                                Icons.home,
                                color: bottomBarController.index.value == 1
                                    ? const Color(0xFF00A3B4)
                                    : Colors.black,
                              ),
                            )),
                        Obx(
                          () => Text(
                            'Home',
                            style: GoogleFonts.plusJakartaSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: bottomBarController.index.value == 1
                                    ? const Color(0xFF00A3B4)
                                    : Colors.black),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: 72,
                    padding: const EdgeInsets.only(bottom: 9),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {
                              bottomBarController.changeIndex(2);
                            },
                            icon: Obx(
                              () => Icon(
                                Icons.credit_card,
                                color: bottomBarController.index.value == 2
                                    ? const Color(0xFF00A3B4)
                                    : Colors.black,
                              ),
                            )),
                        Obx(
                          () => Text(
                            'My Cards',
                            style: GoogleFonts.plusJakartaSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: bottomBarController.index.value == 2
                                  ? const Color(0xFF00A3B4)
                                  : Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: 72,
                    padding: const EdgeInsets.only(bottom: 9),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {
                              bottomBarController.changeIndex(3);
                            },
                            icon: Obx(
                              () => Icon(
                                Icons.message,
                                color: bottomBarController.index.value == 3
                                    ? const Color(0xFF00A3B4)
                                    : Colors.black,
                              ),
                            )),
                        Obx(
                          () => Text(
                            'Inbox',
                            style: GoogleFonts.plusJakartaSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: bottomBarController.index.value == 3
                                  ? const Color(0xFF00A3B4)
                                  : Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.20,
                    height: 72,
                    padding: const EdgeInsets.only(bottom: 9),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {
                              bottomBarController.changeIndex(4);
                            },
                            icon: Obx(
                              () => Icon(
                                Icons.person,
                                color: bottomBarController.index.value == 4
                                    ? const Color(0xFF00A3B4)
                                    : Colors.black,
                              ),
                            )),
                        Obx(
                          () => Text(
                            'Profile',
                            style: GoogleFonts.plusJakartaSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: bottomBarController.index.value == 4
                                  ? const Color(0xFF00A3B4)
                                  : Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
