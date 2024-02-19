import 'package:flutter/material.dart';


class Hiking extends StatelessWidget {
  const Hiking({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text('Place List'),
          backgroundColor: Colors.teal,
        ),
        body: Center(
          // crossAxisAlignment: CrossAxisAlignment.start,

            child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start, //hizalamayı bozmamak için
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text('list of places to explore',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                  Padding(

                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          customSizedBox(),
                          InkWell(
                              onTap: () async {
                              },
                              child: Container(
                                  width: MediaQuery.of(context).size.width / 2,
                                  height: 100,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [
                                      Color(0xFFFFFFFF),
                                      Color(0xFFFFFFFF)
                                    ]),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Activity 1",
                                      style: TextStyle(
                                          fontSize: 30,
                                          color: Color(0xFF808080)),
                                    ),
                                  ))),
                          customSizedBox(), InkWell(
                              onTap: () async {
                              },
                              child: Container(
                                  width: MediaQuery.of(context).size.width / 2,
                                  height: 100,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [
                                      Color(0xFFFFFFFF),
                                      Color(0xFFFFFFFF)
                                    ]),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Activity 2",
                                      style: TextStyle(
                                          fontSize: 30,
                                          color: Color(0xFF808080)),
                                    ),
                                  ))),
                        ]),
                  )
                ])));
  }
}

Widget customSizedBox() => const SizedBox(
  height: 20,
);
