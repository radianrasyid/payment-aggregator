import 'package:payment_aggregator/screens/FinancialAggregators/Insurance/components/dialog_cek_tagihan_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PerInsuranceItemScreen extends StatefulWidget {
  PerInsuranceItemScreen(
      {super.key, required this.name, required this.label, this.onChange = ''});

  @override
  State<PerInsuranceItemScreen> createState() => _PerInsuranceItemScreenState();
  String name;
  String label;
  String onChange;
}

class _PerInsuranceItemScreenState extends State<PerInsuranceItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                fontWeight: FontWeight.w700, fontSize: 16, color: Colors.black),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.name,
              style:
                  GoogleFonts.dmSans(fontSize: 13, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 19,
            ),
            SizedBox(
              height: 41,
              child: TextField(
                  decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: widget.label),
                  onChanged: ((value) {
                    setState(() {
                      widget.onChange = value;
                    });
                  })),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            onPressed: () {
              showModalBottomSheet(
                  enableDrag: true,
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  context: context,
                  builder: ((context) {
                    return DialogCekTagihan(
                      name: 'Astrid Faradilla',
                      asuransi: 'Prudential',
                      nomorPolis: '172839123123',
                      periodeBayar: 'Januari 2023',
                    );
                  }));
            },
            child: Text(
              'Cek Tagihan',
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w700,
                fontSize: 17,
              ),
            )),
      ),
    );
  }
}
