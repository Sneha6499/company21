import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project134/review.dart';



class Jobb extends StatefulWidget {
  const Jobb({Key? key}) : super(key: key);

  @override
  State<Jobb> createState() => _JobbState();
}

class _JobbState extends State<Jobb> {
  bool _passwordVisible = false;
  bool isChecked = false;

  var type;
  String dropdownValue = "One";
  String titlleex = "Choose Experience";
  String selctedtitlleex = "";
  String titlleex1 = "What is Your Expertise?";
  String selctedtitlleex1 = "";
  String titlleex2 = "Job Functions";
  String selctedtitlleex2 = "";
  String titlleex3 = "Skills";
  String selctedtitlleex3 = "";

  String titlleex4 = "Preferred Industry Experience ";
  String selctedtitlleex4 = "";
  final TextEditingController _controller = new TextEditingController();

  var items = ['One', 'Two', 'Three', 'Four'];
  List<String> selectedExperince = [];
  List<String> Experince = ['1-2', '2-5', '5-10', 'Over 10'];

  List<String> selectedExpertise = [];
  List<String> Expertise = [
    'Design',
    'Engineering & construction',
    'Commubications and public relations',
    'Administration',
    'Finance',
    'Health Care'
  ];

  List<String> selectedSkills = [];
  List<String> Skills = ['Art Direction', 'Illstration', 'Fashion'];
  String? gender;

  String radioButtonItem = '';
  String radioButtonItem1 = '';
  TextEditingController dateinput = TextEditingController();
  final _amount = TextEditingController();

  // Group Value for Radio Button.
  int id = 1;
  int num = 1;
  PageController controller_ = PageController();

  List<String> selectedJob = [];
  List<String> Job = ['Art Direction', 'Illstration', 'Fashion'];

  List<String> selectedIndustry_Experience = [];
  List<String> Industry_Experience = [
    'Accounting',
    'Tax',
    'Design',
    'Data Entry',
    'Finance'
  ];

  @override
  void initstate() {
    dateinput.text = "";
    super.initState();

    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Scaffold(
            body: PageView(controller: controller_, children: [
      Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 70,
                ),

                Row(
                  children: [
                    Text('Job Details',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.black)),
                    SizedBox(
                      width: 170,
                    ),
                    InkWell(
                      onTap: () {
                        // handle button press
                      },
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        // handle button press
                      },
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        // handle button press
                      },
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),

                Text('Job Title',
                    style: TextStyle(
                        fontSize: 18, color: Color.fromRGBO(19, 22, 30, 1))),
                SizedBox(
                  height: 6,
                ),
                // textAlign: TextAlign.center,
                // decoration: new InputDecoration.collapsed(
                //   hintText: " PASSWORD", ), )
                SizedBox(
                  height: 45,
                  width: 343,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(201, 223, 218, 1),

                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(201, 223, 218, 1),
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                        //         borderRadius: BorderRadius.circular(15.0),
                      ),
                      hintText: "Enter job title",
                      contentPadding: EdgeInsets.only(top:13,bottom: 12.5,left:10),
                      // Update the state i.e. toogle the state of passwordVisible variable
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text('Experience',
                    style: TextStyle(
                        fontSize: 18, color: Color.fromRGBO(19, 22, 30, 1))),
                SizedBox(
                  height: 5,
                ),

                Container(
                  width: 343,
                  height: 45,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(201, 223, 218, 1),
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Colors.black87)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      selectedExperince.isEmpty
                          ? const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Choose One",
                                style: TextStyle(
                                  color: Color.fromRGBO(83, 104, 101, 1),
                                ),
                              ))
                          : Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: SizedBox(
                                  height: 20,
                                  width: 250,
                                  child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        for (var value in selectedExperince)
                                          Text("$value "),
                                      ])),
                            ),
                      IconButton(
                          icon: const Icon(Icons.keyboard_arrow_down_sharp),
                          //   child:Text("jj"),//selectedCities==null?"Modal Bottom Sheet":selectedCities.last),
                          onPressed: () async {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return _MyDialog(
                                      title: titlleex,
                                      titlleex: selctedtitlleex,
                                      cities: Experince,
                                      selectedCities: selectedExperince,
                                      onSelectedCitiesListChanged: (cities) {
                                        setState(() {
                                          selectedExperince = cities;
                                        });

                                        //print(selectedExperince);
                                      });
                                });
                          }),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),

                Text('Expertise ',
                    style: TextStyle(
                        fontSize: 18, color: Color.fromRGBO(19, 22, 30, 1))),
                SizedBox(
                  height: 2,
                ),

                Container(
                  width: 343,
                  height: 45,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(201, 223, 218, 1),
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Colors.black87)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      selectedExpertise.isEmpty
                          ? const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Select All that Applies",
                                style: TextStyle(
                                  color: Color.fromRGBO(83, 104, 101, 1),
                                ),
                              ))
                          : Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: SizedBox(
                                  height: 20,
                                  width: 250,
                                  child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        for (var value in selectedExpertise)
                                          Text("$value "),
                                      ])),
                            ),
                      IconButton(
                          icon: const Icon(Icons.keyboard_arrow_down_sharp),
                          //   child:Text("jj"),//selectedCities==null?"Modal Bottom Sheet":selectedCities.last),
                          onPressed: () async {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return _MyDialog(
                                      title: titlleex1,
                                      titlleex: selctedtitlleex1,
                                      cities: Expertise,
                                      selectedCities: selectedExpertise,
                                      onSelectedCitiesListChanged: (cities) {
                                        setState(() {
                                          selectedExpertise = cities;
                                        });

                                        //print(selectedExperince);
                                      });
                                });
                          }),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text('Job Functions',
                    style: TextStyle(
                        fontSize: 18, color: Color.fromRGBO(19, 22, 30, 1))),
                SizedBox(
                  height: 5,
                ),

                Container(
                  width: 343,
                  height: 45,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(201, 223, 218, 1),
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Colors.black87)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      selectedJob.isEmpty
                          ? const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Select All that Applies",
                                style: TextStyle(
                                  color: Color.fromRGBO(83, 104, 101, 1),
                                ),
                              ))
                          : Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: SizedBox(
                                  height: 20,
                                  width: 250,
                                  child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        for (var value in selectedJob)
                                          Text("$value "),
                                      ])),
                            ),
                      IconButton(
                          icon: const Icon(Icons.keyboard_arrow_down_sharp),
                          //   child:Text("jj"),//selectedCities==null?"Modal Bottom Sheet":selectedCities.last),
                          onPressed: () async {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return _MyDialog(
                                      title: titlleex2,
                                      titlleex: selctedtitlleex2,
                                      cities: Job,
                                      selectedCities: selectedJob,
                                      onSelectedCitiesListChanged: (cities) {
                                        setState(() {
                                          selectedJob = cities;
                                        });

                                        //print(selectedExperince);
                                      });
                                });
                          }),
                    ],
                  ),
                ),

                SizedBox(
                  height: 12,
                ),
                Text('Skills',
                    style: TextStyle(
                        fontSize: 18, color: Color.fromRGBO(19, 22, 30, 1))),
                SizedBox(
                  height: 5,
                ),

                Container(
                  width: 343,
                  height: 45,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(201, 223, 218, 1),
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Colors.black87)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      selectedSkills.isEmpty
                          ? const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Select All that Applies",
                                style: TextStyle(
                                  color: Color.fromRGBO(83, 104, 101, 1),
                                ),
                              ))
                          : Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: SizedBox(
                                  height: 20,
                                  width: 250,
                                  child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        for (var value in selectedSkills)
                                          Text("$value "),
                                      ])),
                            ),
                      IconButton(
                          icon: const Icon(Icons.keyboard_arrow_down_sharp),
                          //   child:Text("jj"),//selectedCities==null?"Modal Bottom Sheet":selectedCities.last),
                          onPressed: () async {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return _MyDialog(
                                      title: titlleex3,
                                      titlleex: selctedtitlleex3,
                                      cities: Skills,
                                      selectedCities: selectedSkills,
                                      onSelectedCitiesListChanged: (cities) {
                                        setState(() {
                                          selectedSkills = cities;
                                        });

                                        //print(selectedExperince);
                                      });
                                });
                          }),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text('Preferred Industry Experience',
                    style: TextStyle(
                        fontSize: 18, color: Color.fromRGBO(19, 22, 30, 1))),
                SizedBox(
                  height: 5,
                ),

                Container(
                  width: 343,
                  height: 45,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(201, 223, 218, 1),
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Colors.black87)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      selectedIndustry_Experience.isEmpty
                          ? const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Select All that Applies",
                                style: TextStyle(
                                  color: Color.fromRGBO(83, 104, 101, 1),
                                ),
                              ))
                          : Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: SizedBox(
                                  height: 20,
                                  width: 250,
                                  child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        for (var value
                                            in selectedIndustry_Experience)
                                          Text("$value "),
                                      ])),
                            ),
                      IconButton(
                          icon: const Icon(Icons.keyboard_arrow_down_sharp),
                          //   child:Text("jj"),//selectedCities==null?"Modal Bottom Sheet":selectedCities.last),
                          onPressed: () async {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return _MyDialog(
                                      title: titlleex4,
                                      titlleex: selctedtitlleex4,
                                      cities: Industry_Experience,
                                      selectedCities:
                                          selectedIndustry_Experience,
                                      onSelectedCitiesListChanged: (cities) {
                                        setState(() {
                                          selectedIndustry_Experience = cities;
                                        });

                                        //print(selectedExperince);
                                      });
                                });
                          }),
                    ],
                  ),
                ),

                SizedBox(
                  height: 12,
                ),
                Text('Job Description',
                    style: TextStyle(
                        fontSize: 18, color: Color.fromRGBO(19, 22, 30, 1))),
                SizedBox(
                  height: 6,
                ),
                // textAlign: TextAlign.center,
                // decoration: new InputDecoration.collapsed(
                //   hintText: " PASSWORD", ), )
                SizedBox(
                  height: 85,
                  width: 343,
                  child: TextFormField(
                    maxLines: 3,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(201, 223, 218, 1),

                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(201, 223, 218, 1),
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                        //         borderRadius: BorderRadius.circular(15.0),
                      ),
                      hintText: "Enter Job Description",


                      // Update the state i.e. toogle the state of passwordVisible variable
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      height: 45,
                      width: 185,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => const ThirdPage()),
                            // );
                          },
                          child: Text(
                            "Skip",
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
                    Container(
                      height: 45,
                      width: 180,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => const FlexOption()),
                            // );
                          },
                          child: Text(
                            "Continue",
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(16, 95, 80, 1),
                              minimumSize: const Size.fromHeight(30),
                              fixedSize: const Size(177, 36),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),

                // const SizedBox(height: 10,),
                // const SizedBox(height: 10,),
              ],
            ),
          ),
        ),
      ),
      Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16),
          child: CustomScrollView(slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 70,
                    ),
                    Row(
                      children: [
                        Text('Flex Options',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                        SizedBox(
                          width: 170,
                        ),
                        InkWell(
                          onTap: () {
                            // handle button press
                          },
                          child: Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            // handle button press
                          },
                          child: Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            // handle button press
                          },
                          child: Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Text('Job Type',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Color.fromRGBO(19, 22, 30, 1))),
                    SizedBox(
                      height: 6,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 50.0),
                      child: Column(
                        //  crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Radio(
                                value: 1,
                                groupValue: id,
                                onChanged: (val) {
                                  setState(() {
                                    radioButtonItem = 'Contract';
                                    id = 1;
                                  });
                                },
                              ),
                              Text(
                                'Contract',
                                style: new TextStyle(fontSize: 17.0),
                              ),
                              SizedBox(width: 30),
                              Radio(
                                value: 2,
                                groupValue: id,
                                onChanged: (val) {
                                  setState(() {
                                    radioButtonItem = 'Part-Time';
                                    id = 2;
                                  });
                                },
                              ),
                              Text(
                                'Part-Time',
                                style: new TextStyle(
                                  fontSize: 17.0,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                value: 3,
                                groupValue: id,
                                onChanged: (val) {
                                  setState(() {
                                    radioButtonItem = 'Full Time';
                                    id = 3;
                                  });
                                },
                              ),
                              Text(
                                'Full Time',
                                style: new TextStyle(fontSize: 17.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text('Job Location',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(19, 22, 30, 1))),
                    SizedBox(
                      height: 5,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Radio(
                              value: 1,
                              groupValue: num,
                              onChanged: (val) {
                                setState(() {
                                  radioButtonItem1= 'At the office';
                                  num = 1;
                                });
                              },
                            ),
                            Text(
                              'At the office',
                              style: new TextStyle(fontSize: 17.0),
                            ),
                            SizedBox(width: 5),
                            Radio(
                              value: 2,
                              groupValue: num,
                              onChanged: (val) {
                                setState(() {
                                  radioButtonItem1= 'Remote';
                                  num = 2;
                                });
                              },
                            ),
                            Text(
                              'Remote',
                              style: new TextStyle(
                                fontSize: 17.0,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              value: 3,
                              groupValue: num,
                              onChanged: (val) {
                                setState(() {
                                  radioButtonItem1 = 'Combination';
                                  num = 3;
                                });
                              },
                            ),
                            Text(
                              'Combination',
                              style: new TextStyle(fontSize: 17.0),
                            ),
                            Radio(
                              value: 4,
                              groupValue: num,
                              onChanged: (val) {
                                setState(() {
                                  radioButtonItem1 = 'Unsure Right Now';
                                  num = 4;
                                });
                              },
                            ),
                            Text(
                              'Unsure Right Now',
                              style: new TextStyle(fontSize: 17.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text('Address',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromRGBO(19, 22, 30, 1))),
                    SizedBox(
                      height: 6,
                    ),
                    SizedBox(
                      height: 45,
                      width: 343,
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromRGBO(201, 223, 218, 1),

                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(201, 223, 218, 1),
                            ),
                            borderRadius: BorderRadius.circular(15.0),
                            //         borderRadius: BorderRadius.circular(15.0),
                          ),
                          hintText: "Enter Location",
                          contentPadding: EdgeInsets.only(top: 17, left: 14),
                          // Update the state i.e. toogle the state of passwordVisible variable
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          children: [
                            Container(
                              height: 45,
                              width: 175,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(builder: (context) => const ThirdPage()),
                                    // );
                                  },
                                  child: Text(
                                    "Back",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Color.fromRGBO(16, 95, 80, 1)),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromRGBO(237, 249, 246, 1),
                                      minimumSize: const Size.fromHeight(30),
                                      fixedSize: const Size(177, 36),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      )),
                                ),
                              ),
                            ),
                            Container(
                              height: 45,
                              width: 175,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //       builder: (context) =>
                                    //           const Compensation()),
                                    // );
                                  },
                                  child: Text(
                                    "Continue",
                                    style: TextStyle(
                                      fontSize: 13,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromRGBO(16, 95, 80, 1),
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
                  ]),
            )
          ]),
        ),
      ),
      Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16),
          child: CustomScrollView(slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 70,
                    ),
                    Row(
                      children: [
                        Text('Compensation',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                        SizedBox(
                          width: 150,
                        ),
                        InkWell(
                          onTap: () {
                            // handle button press
                          },
                          child: Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            // handle button press
                          },
                          child: Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            // handle button press
                          },
                          child: Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Text('Expected joining date',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Color.fromRGBO(19, 22, 30, 1))),
                    SizedBox(
                      height: 6,
                    ),
                    SizedBox(
                      height: 45,
                      width: 343,
                      child: TextFormField(
                        controller: dateinput,
                        decoration: InputDecoration(
                          //icon of text field
                          //   labelText: "Enter Date"
                          filled: true,
                          fillColor: Color.fromRGBO(201, 223, 218, 1),

                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(201, 223, 218, 1),
                            ),
                            borderRadius: BorderRadius.circular(15.0),
                            //         borderRadius: BorderRadius.circular(15.0),
                          ),
                          hintText: "select",
                          suffixIcon: Icon(Icons.calendar_today),
                          // Update the state i.e. toogle the state of passwordVisible variable
                        ),
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              //DateTime.now() - not to allow to choose before today.
                              lastDate: DateTime(2101));

                          if (pickedDate != null) {
                            print(
                                pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                            String formattedDate =
                                DateFormat('yyyy-MM-dd').format(pickedDate);
                            print(
                                formattedDate); //formatted date output using intl package =>  2021-03-16
                            //you can implement different kind of Date Format here according to your requirement

                            setState(() {
                              dateinput.text =
                                  formattedDate; //set output date to TextField value.
                            });
                          } else {
                            print("Date is not selected");
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Text('Payment Option',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Color.fromRGBO(19, 22, 30, 1))),
                    SizedBox(
                      height: 6,
                    ),
                    SizedBox(
                      height: 45,
                      width: 343,
                      child: TextFormField(
                        controller: _controller,
                        decoration: InputDecoration(
                          suffixIcon: PopupMenuButton<String>(
                            icon: const Icon(Icons.arrow_drop_down),
                            onSelected: (String value) {
                              _controller.text = value;
                            },
                            itemBuilder: (BuildContext context) {
                              return items
                                  .map<PopupMenuItem<String>>((String value) {
                                return new PopupMenuItem(
                                    child: new Text(value), value: value);
                              }).toList();
                            },
                          ),
                          filled: true,
                          fillColor: Color.fromRGBO(201, 223, 218, 1),

                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(201, 223, 218, 1),
                            ),
                            borderRadius: BorderRadius.circular(15.0),

                            //         borderRadius: BorderRadius.circular(15.0),
                          ),
                          hintText: "Annual Pay",

                          // Update the state i.e. toogle the state of passwordVisible variable
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    SizedBox(
                      height: 45,
                      width: 343,
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromRGBO(201, 223, 218, 1),

                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(201, 223, 218, 1),
                            ),
                            borderRadius: BorderRadius.circular(15.0),
                            //         borderRadius: BorderRadius.circular(15.0),
                          ),
                          hintText: "Currency",
                          // Update the state i.e. toogle the state of passwordVisible variable
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    SizedBox(
                      height: 45,
                      width: 343,
                      child: TextFormField(
                        controller: _controller,
                        decoration: InputDecoration(
                          suffixIcon: PopupMenuButton<String>(
                            icon: const Icon(Icons.arrow_drop_down),
                            onSelected: (String value) {
                              _controller.text = value;
                            },
                            itemBuilder: (BuildContext context) {
                              return items
                                  .map<PopupMenuItem<String>>((String value) {
                                return new PopupMenuItem(
                                    child: new Text(value), value: value);
                              }).toList();
                            },
                          ),
                          filled: true,
                          fillColor: Color.fromRGBO(201, 223, 218, 1),

                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(201, 223, 218, 1),
                            ),
                            borderRadius: BorderRadius.circular(15.0),

                            //         borderRadius: BorderRadius.circular(15.0),
                          ),
                          hintText: "Select Category",

                          // Update the state i.e. toogle the state of passwordVisible variable
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 45,
                          width: 160,
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromRGBO(201, 223, 218, 1),

                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(201, 223, 218, 1),
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                                //         borderRadius: BorderRadius.circular(15.0),
                              ),
                              hintText: "Amount",
                              // Update the state i.e. toogle the state of passwordVisible variable
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("-"),
                        SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          height: 45,
                          width: 160,
                          child: TextFormField(
                            controller: _amount,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromRGBO(201, 223, 218, 1),

                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(201, 223, 218, 1),
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                                //         borderRadius: BorderRadius.circular(15.0),
                              ),
                              hintText: "Amount",
                              // Update the state i.e. toogle the state of passwordVisible variable
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          children: [
                            Container(
                              height: 45,
                              width: 175,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(builder: (context) => const ThirdPage()),
                                    // );
                                  },
                                  child: Text(
                                    "Back",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Color.fromRGBO(16, 95, 80, 1)),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromRGBO(237, 249, 246, 1),
                                      minimumSize: const Size.fromHeight(30),
                                      fixedSize: const Size(177, 36),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      )),
                                ),
                              ),
                            ),
                            Container(
                              height: 45,
                              width: 175,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Review(
                                              joblocation: radioButtonItem1,
                                              amount: _amount.text,
                                              jobtype:  radioButtonItem,
                                              experience: selectedExperince,
                                              expertise: selectedExpertise,
                                              jobfunction: selectedJob,
                                              skills: selectedSkills, industry: selectedIndustry_Experience
                                              )),
                                    );
                                  },
                                  child: Text(
                                    "Continue",
                                    style: TextStyle(
                                      fontSize: 13,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromRGBO(16, 95, 80, 1),
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
                  ]),
            )
          ]),
        ),
      ),
    ])));
  }
}

class _MyDialog extends StatefulWidget {
  const _MyDialog({
    required this.cities,
    required this.selectedCities,
    required this.onSelectedCitiesListChanged,
    required this.title,
    required this.titlleex,
  });

  final List<String> cities;
  final String titlleex;
  final String title;
  final List<String> selectedCities;
  final ValueChanged<List<String>> onSelectedCitiesListChanged;

  @override
  _MyDialogState createState() => _MyDialogState();
}

class _MyDialogState extends State<_MyDialog> {
  List<String> _tempSelectedCities = [];
  String titlleName = "";

  @override
  void initState() {
    _tempSelectedCities = widget.selectedCities;
    // _temptitle=widget.titlleex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    titlleName = widget.title;
    return Dialog(
      child: Container(
        //height: 300,
        //width: 300,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Text(
              titlleName,
              style: const TextStyle(fontSize: 18.0, color: Colors.black),
              textAlign: TextAlign.center,
            ),

            // color: Color(0xFFfab82b),

            ListView.builder(
                shrinkWrap: true,
                itemCount: widget.cities.length,
                itemBuilder: (BuildContext context, int index) {
                  final cityName = widget.cities[index];

                  // titlleName =titlleame;
                  return CheckboxListTile(
                      title: Text(cityName),
                      value: _tempSelectedCities.contains(cityName),
                      onChanged: (bool? value) {
                        if (value!) {
                          if (!_tempSelectedCities.contains(cityName)) {
                            setState(() {
                              _tempSelectedCities.add(cityName);
                            });
                          }
                        } else {
                          if (_tempSelectedCities.contains(cityName)) {
                            setState(() {
                              _tempSelectedCities.removeWhere(
                                  (String city) => city == cityName);
                            });
                          }
                        }
                        widget.onSelectedCitiesListChanged(_tempSelectedCities);
                      });
                }),
          ],
        ),
      ),
    );
  }
}
