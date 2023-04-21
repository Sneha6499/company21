import 'package:flutter/material.dart';

import 'company.dart';

class Review extends StatelessWidget {
  String joblocation;

  String amount;
  String jobtype;
  List experience;
  List expertise;
  List jobfunction;
  List skills;
  List industry;

  Review(
      {required this.joblocation,
      required this.amount,
      required this.jobtype,
      required this.experience,
      required this.expertise,
      required this.jobfunction,
      required this.skills,
      required this.industry});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Scaffold(
            body: Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16),
      child: CustomScrollView(slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                  Widget>[
            SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Review',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Colors.black)),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Container(
                    height: 26,
                    width: 72,

                    child: ElevatedButton.icon(
                        icon: Icon(
                          Icons.edit,
                          color: Colors.green,
                          size: 12,

                        ),
                        label: Text(
                          "Edit",
                          style: TextStyle(
                              fontSize: 13,
                              color: Color.fromRGBO(16, 95, 80, 1)),
                        ),
                    // Container(
                    //   height: 26,
                    //   width: 72,
                    //   child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => const ThirdPage()),
                          // );
                        },

                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(237, 249, 246, 1),
                            minimumSize: const Size.fromHeight(30),
                           // fixedSize: const Size(177, 36),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                  ),
                ),
          ]
                ),








                SizedBox(height: 12),
            SizedBox(
              width: 348,
              height: 79.34,
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 6.0, right: 6.0, top: 15, bottom: 15),
                    child: RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: const <TextSpan>[
                          TextSpan(
                              text: 'You are almost done!\n',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromRGBO(221, 148, 6, 1))),
                          TextSpan(
                              text:
                                  'Please verify your filled details and submit\nthe form',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(221, 148, 6, 1))),
                        ],
                      ),
                    ),
                  )),
            ),
            SizedBox(
              height: 12,
            ),
            Text('Graphic Designer',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black)),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 786.84,
              width: 346,
              // alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(220, 234, 231, 1),
                  border: Border.all(
                      color: Color.fromRGBO(220, 234, 231, 1),
                      // Set border color
                      width: 3.0),
                  // Set border width
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  // Set rounded corner radius
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        color: Colors.black,
                        offset: Offset(1, 3))
                  ] // Make rounded corner of border
                  ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Text('Job Location',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(16, 95, 80, 1))),
                    SizedBox(
                      height: 7.81,
                    ),
                    Text(joblocation),
                    SizedBox(
                      height: 16,
                    ),
                    Text('Talent Pay',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(16, 95, 80, 1))),
                    SizedBox(
                      height: 7.81,
                    ),
                    Text(amount + "hour"),
                    SizedBox(
                      height: 16,
                    ),
                    Text('Flex Options',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(16, 95, 80, 1))),
                    SizedBox(
                      height: 7.81,
                    ),
                    Text("Work type : " + '${jobtype}'),
                    SizedBox(
                      height: 16,
                    ),
                    Text('Experience',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(16, 95, 80, 1))),
                    SizedBox(
                      height: 7.81,
                    ),
                    SizedBox(
                      height: 20,
                      width: 350,
                      child:
                      ListView(scrollDirection: Axis.horizontal, children: [
                        for (var value in experience)
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(204, 220, 212, 1),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                    border: Border.all(color: Colors.black26)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8),
                                  child: Text(value),
                                )),
                          )
                      ]),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text('Expertise',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(16, 95, 80, 1))),
                    SizedBox(
                      height: 7.81,
                    ),
                    SizedBox(
                      height: 20,
                      width: 350,
                      child:
                          ListView(scrollDirection: Axis.horizontal, children: [
                        for (var value in expertise)
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(204, 220, 212, 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    border: Border.all(color: Colors.black26)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8),
                                  child: Text(value),
                                )),
                          )
                      ]),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text('Job Functions',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(16, 95, 80, 1))),
                    SizedBox(
                      height: 7.81,
                    ),
                    SizedBox(
                      height: 20,
                      width: 350,
                      child:
                      ListView(scrollDirection: Axis.horizontal, children: [
                        for (var value in jobfunction)
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(204, 220, 212, 1),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                    border: Border.all(color: Colors.black26)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8),
                                  child: Text(value),
                                )),
                          )
                      ]),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text('Skills',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(16, 95, 80, 1))),
                    SizedBox(
                      height: 7.81,
                    ),
                    SizedBox(
                      height: 20,
                      width: 350,
                      child:
                      ListView(scrollDirection: Axis.horizontal, children: [
                        for (var value in skills)
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(204, 220, 212, 1),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                    border: Border.all(color: Colors.black26)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8),
                                  child: Text(value),
                                )),
                          )
                      ]),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    Container(
                      height: 45,
                      width: 171,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => const ThirdPage()),
                            // );
                          },
                          child: Text(
                            "Save as a Draft",
                            style: TextStyle(
                                fontSize: 13,
                                color: Color.fromRGBO(16, 95, 80, 1)),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(237, 249, 246, 1),
                              minimumSize: const Size.fromHeight(30),
                              fixedSize: const Size(177, 36),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 45,
                      width: 181.3,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Company()),
                            );
                          },
                          child: Text(
                            "Submit or Approval",
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(16, 95, 80, 1),
                              minimumSize: const Size.fromHeight(30),
                              // fixedSize: const Size(177, 36),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),

              ],
        )

      ),
          ]


        )

    )
    )
    );
  }
}
