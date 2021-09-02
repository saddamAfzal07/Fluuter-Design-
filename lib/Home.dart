import 'package:flutter/material.dart';
import 'package:flutter_design_challenge/Utils/Colors.dart';
import 'package:flutter_design_challenge/widgets/Doctors.dart';
import 'package:flutter_design_challenge/widgets/boxes.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff053f5e),
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Color(0xff053f5e),
      ),
      body: SafeArea(
        child: Container(
          color: Color(0xff053f5e),
          child: ListView(
            children: [
              Container(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.notification_add_outlined,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20, left: 10),
                          child: CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/profile.jpg")),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xfff6f6f6),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(22, 25, 22, 0),
                    child: Column(
                      children: [
                        Container(
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hi,OLIVIA",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 22,
                                  ),
                                ),
                                Text(
                                  "Welcome Back",
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 60,
                          decoration:
                              BoxDecoration(color: Colors.white, boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 5.0,
                              spreadRadius: 5,
                            ),
                          ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text("Search...."),
                              ),
                              Container(
                                height: 60,
                                width: 60,
                                color: primary,
                                child: Icon(
                                  Icons.search_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Category",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Category",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            bOXWidget("Dental", "26 Doctors",
                                Icons.access_alarms_outlined),
                            bOXWidget("Heart", "23 Doctors", Icons.favorite),
                            bOXWidget("Surgeons", "11 Doctors",
                                Icons.account_circle_outlined),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Top Rated",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "See All",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        introDoc("Dr Syannn", "assets/doc1.jpg", "Sydney",
                            "bfkab", "abccab"),
                        introDoc("Dr Syannn", "assets/doc2.jpg", "Sydney",
                            "bfkab", "abccab"),
                        introDoc("Dr Syannn", "assets/doc3.jpg", "Sydney",
                            "bfkab", "abccab"),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
