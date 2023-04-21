import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:project134/thirdpage.dart';

class SecondRoute extends StatefulWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  @override
  bool _passwordVisible = false;
  bool isChecked = false;
  var _image;
  var imagePicker;
  var type;
  String  dropdownValue ="One";

  final TextEditingController _controller = new TextEditingController();
  var items = ['One', 'Two', 'Three', 'Four'];


  @override
  void initstate() {
    super.initState();
    imagePicker = ImagePicker();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child:Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 70,
                  ),

                  Text('Register for Free',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)),
                  SizedBox(
                    height: 5.85,
                  ),

                  Text(
                    'Create your account by filling the form below',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(73, 91, 90, 1),
                    ),
                  ),
                  SizedBox(
                    height: 30.15,
                  ),
                  Center(
                    child: Container(
                      height: MediaQuery.of(context).size.width - 300,
                      width: MediaQuery.of(context).size.width - 300,
                      decoration: const BoxDecoration(
                        // borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                            image: AssetImage("assets/camera.png"),
                            fit: BoxFit.cover),
                      ),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: GestureDetector(
                          onTap: () {
                            showModalBottomSheet<void>(
                              context: context,
                              builder: (BuildContext context) {
                                return SizedBox(
                                  height: 200,
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: <Widget>[
                                        ElevatedButton(
                                          child: const Text(
                                              "Image from Camera"),
                                          onPressed: () async {
                                            //PickedFile pickedFile =
                                            //await imagePicker.getImage(
                                            //source: ImageSource.camera,
                                            //);
                                            //  setState(() {
                                            //   if (pickedFile != null) {
                                            //_image = File(pickedFile.path);
                                            //    } else {
                                            // print('No image selected.');
                                            //  }
                                            // });
                                            // File image = File(pickedFile.path);
                                            //_image= image;
                                          },
                                        ),
                                        ElevatedButton(
                                          child: const Text(
                                              "Image from Gallery"),
                                          onPressed: () async {
                                            //  PickedFile pickedFile =
                                            ///  await imagePicker.getImage(
                                            //    source: ImageSource.gallery,
                                            //  );

                                            // setState(() {
                                            // if (pickedFile != null) {
                                            // _image = File(pickedFile.path);
                                            //  } else {
                                            // print('No image selected.');
                                            //}
                                            //});
                                          },
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Image.asset("assets/camicon.png"),
                        ),
                      ),
                    ),
                  ),

                  Text('Company Name',
                      style: TextStyle(
                          fontSize: 18, color: Color.fromRGBO(19, 22, 30, 1))),
                  SizedBox(
                    height: 2,
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
                        hintText: "Company name",
                        contentPadding: EdgeInsets.only(top:12.5,bottom: 12.5,left:10),
                        // Update the state i.e. toogle the state of passwordVisible variable
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),

                  Text('Company size',
                      style: TextStyle(
                          fontSize: 18, color: Color.fromRGBO(19, 22, 30, 1))),
                  SizedBox(
                    height: 2,
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
                        hintText: "Company size",
                        contentPadding: EdgeInsets.only(top:12.5,bottom: 12.5,left:10),

                        // Update the state i.e. toogle the state of passwordVisible variable
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Work Email',
                      style: TextStyle(
                          fontSize: 18, color: Color.fromRGBO(19, 22, 30, 1))),
                  SizedBox(
                    height: 2,
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
                        hintText: "enter work email",
                        contentPadding: EdgeInsets.only(top:12.5,bottom: 12.5,left:10),

                        // Update the state i.e. toogle the state of passwordVisible variable
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),

                  Text('Password',
                      style: TextStyle(
                          fontSize: 18, color: Color.fromRGBO(19, 22, 30, 1))),
                  SizedBox(
                    height: 2,
                  ),

                  SizedBox(
                    height: 45,
                    width: 343,
                    child: TextFormField(
                      obscureText: !_passwordVisible,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromRGBO(201, 223, 218, 1),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(83, 104, 101, 1),
                            ),
                            borderRadius: BorderRadius.circular(15.0),

                            //         borderRadius: BorderRadius.circular(15.0),
                          ),
                          suffixIcon: IconButton(
                              icon: Icon(
                                _passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                // Update the state i.e. toogle the state of passwordVisible variable
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              }),
                          hintText: "Password",
                      contentPadding: EdgeInsets.only(top:12.5,bottom: 12.5,left:10),
                      )
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),

                  Text('Confirm password',
                      style: TextStyle(
                          fontSize: 18, color: Color.fromRGBO(19, 22, 30, 1))),
                  SizedBox(
                    height: 2,
                  ),

                  SizedBox(
                    height: 45,
                    width: 343,
                    child: TextFormField(
                      obscureText: !_passwordVisible,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromRGBO(201, 223, 218, 1),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(83, 104, 101, 1),
                            ),
                            borderRadius: BorderRadius.circular(15.0),
                            //         borderRadius: BorderRadius.circular(15.0),
                          ),
                          suffixIcon: IconButton(
                              icon: Icon(
                                _passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                // Update the state i.e. toogle the state of passwordVisible variable
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              }),
                          hintText: "Confirm password",
                          contentPadding: EdgeInsets.only(top:12.5,bottom: 12.5,left:10), ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),

                  Row(
                    children: [
                      SizedBox(
                        width: 22.0,
                        height: 22.0,
                        child: Checkbox(
                          checkColor: Colors.white,
                          // fillColor: MaterialStateProperty.resolveWith(getColor),
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                      ),
                      Text(
                        ' I agree to the Terms of Service and \n Privacy Policy.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(73, 91, 90, 1),
                        ),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.start,
                  ),



                  SizedBox(
                    height: 36,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => const ThirdPage()),
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
                  SizedBox(
                    height: 24,
                  ),

                  Row(
                    children: <Widget>[
                      const Text(
                        'Already have account?',
                        style: TextStyle(
                            fontSize: 15, color: Color.fromRGBO(73, 91, 90, 1)),
                      ),
                      TextButton(
                        child: const Text(
                          'Sign in',
                          style: TextStyle(
                              fontSize: 14, color: Color.fromRGBO(16, 95, 80, 1)),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ThirdPage()),
                          );

                          //signup screen
                        },
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      const Text(
                        'Do you want to join as an Individual?',
                        style: TextStyle(
                            fontSize: 15, color: Color.fromRGBO(73, 91, 90, 1)),
                      ),
                      TextButton(
                        child: const Text(
                          'Sign up here?',
                          style: TextStyle(
                              fontSize: 14, color: Color.fromRGBO(16, 95, 80, 1)),
                        ),
                        onPressed: () {
                          //signup screen
                        },
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.start,
                  ),
                  // const SizedBox(height: 10,),
                  // const SizedBox(height: 10,),
                ],
              ),
            ),
          )),
    );
  }
}