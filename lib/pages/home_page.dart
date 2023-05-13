import 'package:dochere/pages/doctor_page.dart';
import 'package:dochere/pages/sub_pages/notify_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  List<String> symptoms = [
    "🤒 Fever",
    "🤕 Headache",
    "🤧 Cough",
    "🤮 Nausea and Vomiting",
    "😫 Fatigue",
    "💩 Diarrhea",
    "😖 Joint pain",
    "💪 Muscle Pain",
    "😖 Skin rash or Irritation",
    "💦 Urinary Problems"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffAAF9FF),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NotificationPage()));
                      },
                      icon: Icon(Icons.notification_important),
                      iconSize: 35,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * 2.6/7,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.lightBlueAccent,
                    // Colors.white,
                    Color(0xffAAF9FF)
                  ],
                ),
              ),
              child: Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 2.6/7,
                    width: MediaQuery.of(context).size.width * 0.2 / 7,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 2.6/7,
                    width: MediaQuery.of(context).size.width * 3.6 / 7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: RichText(
                              text: TextSpan(
                            style: GoogleFonts.notoSerif(
                              textStyle: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            children: <TextSpan>[
                              TextSpan(text: 'Welcome,'),
                              TextSpan(text: 'Name'),
                            ],
                          )),
                          //       Text(
                          //         "Welcome!",
                          //         style: GoogleFonts.notoSerif(
                          //           textStyle: TextStyle(
                          //               fontSize: 42,
                          //               fontWeight: FontWeight.bold,
                          //               color: Colors.black),
                          //         ),
                          //       ),
                          //     ),
                          // Text(
                          //   "Name",
                          //   style: GoogleFonts.notoSerif(
                          //     textStyle: TextStyle(
                          //         fontSize: 42,
                          //         fontWeight: FontWeight.bold,
                          //         color: Colors.black),
                          //   ),
                          // ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 35),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Doctors()));
                            },
                            child: Container(
                                height: MediaQuery.of(context).size.height * 1/15,
                                width: MediaQuery.of(context).size.width * 2.8/7,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.redAccent),
                                child: Center(
                                    child: Text(
                                  "Book Appointment",
                                  style: GoogleFonts.notoSerif(
                                    textStyle: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 2.2/7,
                    width: MediaQuery.of(context).size.width * 3 / 7,
                    child: Image.asset(
                      'assets/doctor-removebg.png',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 2.6/7,
                    width: MediaQuery.of(context).size.width * 0.2 / 7,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.8 / 6,
                width: MediaQuery.of(context).size.width,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          "What are your Symptoms?",
                          style: GoogleFonts.aBeeZee(
                            textStyle: TextStyle(
                                fontSize: 29,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.5 / 6,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              padding: EdgeInsets.only(left: 9),
                              itemCount: symptoms.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xff003B6F),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    height: MediaQuery.of(context).size.height *
                                        0.3 /
                                        6,
                                    width: MediaQuery.of(context).size.width *
                                        3.4 /
                                        5,
                                    child: Center(
                                        child: Text(
                                      symptoms[index],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    )),
                                  ),
                                );
                              },
                            )),
                      ),
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 25, left: 5),
              child: Text(
                "Popular Doctors",
                style: GoogleFonts.aBeeZee(
                  textStyle: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
            GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: symptoms.length,
                itemBuilder: (BuildContext ctx, index) {
                  return GridTileBar(
                    backgroundColor: Color(0xff2770BE),
                    leading: const CircleAvatar(
                      backgroundColor: Colors.deepOrange,
                      child: Text(
                        'K',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                    title: Text(
                      symptoms[index],
                      style: const TextStyle(color: Colors.black),
                    ),
                    subtitle: Text(
                      symptoms[index],
                      style: const TextStyle(color: Colors.grey),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert_rounded,
                          color: Colors.black54),
                    ),
                  );
                }),
          ],
        ),
      )),
    );
  }
}
