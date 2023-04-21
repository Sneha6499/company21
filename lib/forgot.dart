import 'package:flutter/material.dart';

class Forgot extends StatefulWidget {
  const Forgot({Key? key}) : super(key: key);

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 70,
          ),
          // icon:  ImageIcon(
          //   AssetImage("assets/fb.png"),
          //   color: Colors.blue,
          //
          //   size: 24,
          // ),
          IconButton(
            icon: new Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context, true);/* Your code */ },
          ),

          const Text('Forgot Password',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(19, 22, 30, 1))),
          SizedBox(
            height: 6,
          ),
          Text(
            'Enter your email and we will send you a',
            style: TextStyle(
              fontSize: 16,
              color: Color.fromRGBO(73, 91, 90, 1),
            ),
          ),
          Text(
            'link to reset passwordl',
            style: TextStyle(
              fontSize: 16,
              color: Color.fromRGBO(73, 91, 90, 1),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Text('Email Address',
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
                hintText: "Enter Email",
                contentPadding: EdgeInsets.only(top:13,bottom:12,left:14),

                // Update the state i.e. toogle the state of passwordVisible variable
              ),
            ),
          ),
          SizedBox(
            height: 36,
          ),
          SizedBox(
            height: 36,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Send",
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(16, 95, 80, 1),
                  minimumSize: const Size.fromHeight(30),
                  fixedSize: const Size(339, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: <Widget>[
                const Text(
                  'Didn’t Receive a Link?',
                  style: TextStyle(
                      fontSize: 15, color: Color.fromRGBO(73, 91, 90, 1)),
                ),
                TextButton(
                  child: const Text(
                    'Resend Link',
                    style: TextStyle(
                        fontSize: 14, color: Color.fromRGBO(16, 95, 80, 1)),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ),
        ],
      ),
    ));
  }
}
