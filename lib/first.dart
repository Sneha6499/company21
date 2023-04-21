import 'package:flutter/material.dart';
import 'package:project134/secondpage.dart';

import 'jobdetails.dart';


class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
          color: Color.fromRGBO(96, 48, 80, 1),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 17, right: 76),
                child: Text("Female Talent Grow Careers",
                    style: TextStyle(fontSize: 22, color: Colors.white)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.85, left: 17, right: 17),
                child: Text("Employers Achieve Diversity with Best Talent",
                    style: TextStyle(fontSize: 17, color: Colors.white)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17, right: 18, top: 24.15),
                child: Container(
                  height: 180,
                  width: 340,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(252, 230, 230, 1),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Row(children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20)),
                        child: Image.asset(
                          "assets/abc.png",
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 25, left: 24),
                          child: Text("I am Looking for Work",
                              style: TextStyle(
                                fontSize: 19,
                                color: Color.fromRGBO(19, 22, 30, 1),
                              )),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 24),
                          child: Text(
                              "Apply for genuine and verified \n jobs, with flexi options",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(19, 22, 30, 1),
                              )),
                        ),

                        SizedBox(
                          height: 15,
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SecondRoute()),
                              );
                            },
                            child: Text(
                              "Connect as a Individual",
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromRGBO(16, 95, 80, 1),
                                fixedSize: const Size(177, 36),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                        )
                      ],
                    )
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17, right: 18, top: 24.15),
                child: Container(
                  height: 180,
                  width: 340,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(252, 230, 230, 1),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Row(children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20)),
                        child: Image.asset(
                          "assets/door.png",
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 25, left: 24),
                          child: Text("I am Looking to Hire",
                              style: TextStyle(
                                fontSize: 19,
                                color: Color.fromRGBO(19, 22, 30, 1),
                              )),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 24),
                          child: Text(
                              "Find talented and skilled \n professionals with ease",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(19, 22, 30, 1),
                              )),
                        ),

                        SizedBox(
                          height: 15,
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Jobb()),
                              );
                            },
                            child: Text(
                              "Connect as a Company",
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromRGBO(16, 95, 80, 1),
                                fixedSize: const Size(177, 36),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                        )
                      ],
                    )
                  ]),
                ),
              ),
              SizedBox(
                height: 23.57,
              ),
              Text(
                "Already have an account",
                style: TextStyle(
                    fontSize: 14,color: Colors.white
                ),
              ),
              SizedBox(
                height: 12,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => const Jobb()),
                    // );
                  },
                  child: Text(
                    "Individual Sign In",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      side: const BorderSide(

                        color: Color.fromRGBO(255, 255, 255, 0.4),
                      ),

                      backgroundColor: Color.fromRGBO(96, 48, 80, 1),
                      fixedSize: const Size(237, 36),
                      shape: RoundedRectangleBorder(

                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ),
              SizedBox(
                height: 12,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => const Jobb()),
                    // );
                  },
                  child: Text(
                    "Employer Sign In",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      side: const BorderSide(

                        color: Color.fromRGBO(255, 255, 255, 0.4),
                      ),
                      backgroundColor: Color.fromRGBO(96, 48, 80, 1),
                      fixedSize: const Size(237, 36),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              )

            ],
          )),
    );
  }
}