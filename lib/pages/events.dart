import 'package:flutter/material.dart';
import 'package:solution_challenge/pages/planting.dart';

import 'cleaning.dart';
import 'exploring.dart';
import 'hiking.dart';

class Events1 extends StatelessWidget {
  const Events1({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          backgroundColor: Colors.teal,
        ),
        body: Center(
            child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, //hizalamayı bozmamak için
          children: [
            Container(
              height: height * .30,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/resimler/forest0.png"),
                ),
              ),
            ),
            titleText(),
            customSizedBox(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customSizedBox(),
                  InkWell(
                      onTap: () async {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Explore(),
                            ));
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width / 2,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Color(0xFFFFFFFF), Color(0xFFFFFFFF)]),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "Explore",
                              style: TextStyle(
                                  fontSize: 30, color: Color(0xFF808080)),
                            ),
                          ))),
                  customSizedBox(),
                  InkWell(
                      onTap: () async {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Hiking(),
                            ));
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width / 2,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Color(0xFFFFFFFF), Color(0xFFFFFFFF)]),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "Hiking",
                              style: TextStyle(
                                  fontSize: 30, color: Color(0xFF808080)),
                            ),
                          ))),
                  customSizedBox(),
                  InkWell(
                      onTap: () async {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CampsiteListScreen(),
                            ));
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width / 2,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Color(0xFFFFFFFF), Color(0xFFFFFFFF)]),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "Clearing",
                              style: TextStyle(
                                  fontSize: 30, color: Color(0xFF808080)),
                            ),
                          ))),
                  customSizedBox(),
                  InkWell(
                      onTap: () async {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Planting(),
                            ));
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width / 2,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Color(0xFFFFFFFF), Color(0xFFFFFFFF)]),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "Planting",
                              style: TextStyle(
                                  fontSize: 30, color: Color(0xFF808080)),
                            ),
                          ))),
                  customSizedBox(),
                ],
              ),
            )
          ],
        )));
  }
}

Text titleText() {
  return Text(
    "Events",
    style: TextStyle(
        color: Colors.grey.shade800, fontSize: 40, fontWeight: FontWeight.bold),
  );
}

Widget customSizedBox() => const SizedBox(
      height: 20,
    );
