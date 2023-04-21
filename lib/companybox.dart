import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';

import 'companydata.dart';


class CompanyBox extends StatefulWidget {
  CompanyBox({Key? key, required this.item, required this.title})
      : super(key: key);
  final CompanyData item;
  final String title;

  @override
  State<CompanyBox> createState() => _CompanyBoxState();
}

class _CompanyBoxState extends State<CompanyBox> {
  final items = CompanyData.getProducts();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 80,
            width: 343,
            // alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color.fromRGBO(220, 234, 231, 1),
                border: Border.all(
                    color: Color.fromRGBO(220, 234, 231, 1),
                    // Set border color
                 ),
                // Set border width
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                // Set rounded corner radius
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      color: Colors.white,
                      offset: Offset(1, 3))
                ] // Make rounded corner of border
            ),


            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: Image.asset(
                    "assets/" + this.widget.item.image,
                    height: 40,
                    width: 40,
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       // SizedBox(height: 15),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              this.widget.item.name,
                              style: TextStyle(
                                fontSize: 16, color: Color.fromRGBO(
                                  19, 22, 30, 1)

                              ),
                            ),

                            Text(
                              this.widget.item.date,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),


                          ],
                        ),


                        Text(
                          this.widget.item.post,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height:2,
                        ),

                        //Text(this.item.description),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Text(
                              this.widget.item.time, style: TextStyle(fontSize: 14,color:Color.fromRGBO(
                                19, 22, 30, 1) ),
                              // textAlign: TextAlign.center,
                            ),
                            // SizedBox(width: 70),
                            Text(
                              this.widget.item.day.toString() + " day ago",
                              textAlign: TextAlign.end,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
      ],
    );
  }
}

