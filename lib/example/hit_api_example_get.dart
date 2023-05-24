import '../../../core/model/user_list_model.dart';
import 'package:payment_aggregator/core/repository/user_api_hit_repo.dart';
import 'package:payment_aggregator/screens/FinancialAggregators/Insurance/per_insurance_item_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class InsuranceScreen extends StatefulWidget {
  const InsuranceScreen({super.key});

  @override
  State<InsuranceScreen> createState() => _InsuranceScreenState();
}

class _InsuranceScreenState extends State<InsuranceScreen> {
  ServiceApiHit serviceApiHit = ServiceApiHit();
  late Future<List<UserList>> listData;
  @override
  void initState() {
    super.initState();
    listData = serviceApiHit.getAllDataUser();
  }

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
              child: FutureBuilder<List<UserList>>(
                future: listData,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<UserList>? isiData = snapshot.data;
                    return ListView.builder(
                      itemCount: isiData?.length,
                      itemBuilder: (context, index) {
                        return Text('ini isi data');
                      },
                    );
                  } else if (snapshot.hasError) {
                    return Text('${snapshot.error}');
                  }
                  return const Align(
                    alignment: Alignment.center,
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
            const Icon(Icons.car_rental),
            const Icon(Icons.health_and_safety),
          ]),
        ));
  }
}
