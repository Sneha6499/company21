import 'package:flutter/material.dart';
import 'package:project134/companydata.dart';


class CompanyPage extends StatelessWidget {
  const CompanyPage({Key? key, required this.item}) : super(key: key);

  //ProductPage(Key? key , required this.item)) : super (key : key);
  final CompanyData item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text('Job Details'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                //mainAxisAlignment: MainAxisAlignment.end,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/" + this.item.image,
                    height: 42,
                    width: 42,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          this.item.name,
                          style: TextStyle(fontSize: 20.0),
                        ),
                        Text(
                          this.item.post,
                          style: TextStyle(fontSize: 20.0),
                        ),
                        Row(
                          children: [
                            Icon(Icons.access_time_rounded),
                            Text(
                              " full time",
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.date_range_outlined),
                            Text(
                              this.item.date,
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(children: [
                Icon(Icons.location_on_outlined),
                Text(
                  this.item.address,
                  style: TextStyle(fontSize: 20.0),
                ),
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    child: Text(
                      'Description',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    //color: Colors.blueAccent,
                  //  textColor: Colors.white,
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 20, //<-- SEE HERE
                  ),
                  TextButton(
                    child: Text(
                      'About',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    //color: Colors.blueAccent,
                    //textColor: Colors.white,
                    onPressed: () {},
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.all(5.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,

                    //width: 3.0
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(
                      5.0) //                 <--- border radius here
                  ),
                  // border:  border: Border.all(color: Colors.blueAccent)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "salary",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      (this.item.fprice.toString() +
                          "-" +
                          this.item.sprice.toString() +
                          " per month"),
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "what you will do",
                      style: TextStyle(
                          fontSize: 20, color: Colors.deepOrangeAccent),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      this.item.description,
                      style: TextStyle(fontSize: 20),
                    ),

                    //  Rating(),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  child: Text(
                    'Applied',
                    style: TextStyle(fontSize: 20.0),
                    textAlign: TextAlign.end,
                  ),
                  // color: Colors.green,
                  // textColor: Colors.white,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}