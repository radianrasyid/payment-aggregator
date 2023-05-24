import 'package:payment_aggregator/screens/FinancialAggregators/Insurance/per_insurance_item_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class InsuranceScreen extends StatelessWidget {
  const InsuranceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                ),
                onPressed: () {
                  Get.back();
                },
              ),
              title: Text(
                'Insurance',
                style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Colors.black),
              ),
              bottom: PreferredSize(
                  preferredSize: const Size(100, 100),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 17),
                    child: TabBar(
                      tabs: [
                        Tab(
                            height: 87,
                            child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset(
                                      'assets/icons/dashboard/insurance.png'),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Asuransi Kesehatan',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10,
                                        color: Colors.black),
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            )),
                        Tab(
                            height: 87,
                            child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset(
                                    'assets/icons/insurance/asuransi-kendaraan.png',
                                    height: 27,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Asuransi Kesehatan',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10,
                                        color: Colors.black),
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            )),
                        Tab(
                            height: 87,
                            child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset(
                                    'assets/icons/insurance/bpjs.png',
                                    height: 27,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Asuransi Kesehatan',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10,
                                        color: Colors.black),
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            )),
                      ],
                      labelColor: Colors.black,
                      labelStyle: const TextStyle(
                          fontFamily: 'Poppins', fontWeight: FontWeight.w500),
                      indicator: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFF00A3B4),
                        ),
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromRGBO(0, 163, 180, 0.2),
                      ),
                      splashFactory: NoSplash.splashFactory,
                    ),
                  ))),
          body: TabBarView(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: ListView(
                shrinkWrap: true,
                children: [
                  const SizedBox(
                    height: 43,
                  ),
                  Text(
                    'Pilih Asuransi Kesehatan',
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 13,
                        color: const Color(0xFF2E2E2E)),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(PerInsuranceItemScreen(
                          name: 'Nomor Polis', label: 'Ex. 123456789'));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      elevation: 0,
                      child: Container(
                        height: 64,
                        width: 327,
                        padding: const EdgeInsets.only(
                            top: 20, bottom: 20, left: 14, right: 27),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                    'assets/icons/insurance/allianz.png'),
                                const SizedBox(
                                  width: 14,
                                ),
                                Text(
                                  'Allianz',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: const Color(0xFF0C192C)),
                                )
                              ],
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(PerInsuranceItemScreen(
                          name: 'Nomor Polis', label: 'Ex. 123456789'));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      elevation: 0,
                      child: Container(
                        height: 64,
                        width: 327,
                        padding: const EdgeInsets.only(
                            top: 20, bottom: 20, left: 14, right: 27),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                    'assets/icons/insurance/prudential.png'),
                                const SizedBox(
                                  width: 14,
                                ),
                                Text(
                                  'Prudential',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: const Color(0xFF0C192C)),
                                )
                              ],
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(PerInsuranceItemScreen(
                          name: 'Nomor Polis', label: 'Ex. 123456789'));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      elevation: 0,
                      child: Container(
                        height: 64,
                        width: 327,
                        padding: const EdgeInsets.only(
                            top: 20, bottom: 20, left: 14, right: 27),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/icons/insurance/axa.png'),
                                const SizedBox(
                                  width: 14,
                                ),
                                Text(
                                  'Axa Healthcare',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: const Color(0xFF0C192C)),
                                )
                              ],
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(PerInsuranceItemScreen(
                          name: 'Nomor Polis', label: 'Ex. 123456789'));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      elevation: 0,
                      child: Container(
                        height: 64,
                        width: 327,
                        padding: const EdgeInsets.only(
                            top: 20, bottom: 20, left: 14, right: 27),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                    'assets/icons/insurance/mandiri.png'),
                                const SizedBox(
                                  width: 14,
                                ),
                                Text(
                                  'Mandiri inHealth',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: const Color(0xFF0C192C)),
                                )
                              ],
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(PerInsuranceItemScreen(
                          name: 'Nomor Polis', label: 'Ex. 123456789'));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      elevation: 0,
                      child: Container(
                        height: 64,
                        width: 327,
                        padding: const EdgeInsets.only(
                            top: 20, bottom: 20, left: 14, right: 27),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                    'assets/icons/insurance/manulife.png'),
                                const SizedBox(
                                  width: 14,
                                ),
                                Text(
                                  'Manulife',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: const Color(0xFF0C192C)),
                                )
                              ],
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(PerInsuranceItemScreen(
                          name: 'Nomor Polis', label: 'Ex. 123456789'));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      elevation: 0,
                      child: Container(
                        height: 64,
                        width: 327,
                        padding: const EdgeInsets.only(
                            top: 20, bottom: 20, left: 14, right: 27),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                    'assets/icons/insurance/allianz.png'),
                                const SizedBox(
                                  width: 14,
                                ),
                                Text(
                                  'Allianz',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: const Color(0xFF0C192C)),
                                )
                              ],
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Icon(Icons.car_rental),
            const Icon(Icons.health_and_safety),
          ]),
        ));
  }
}
