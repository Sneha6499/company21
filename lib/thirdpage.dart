import 'package:flutter/material.dart';

import 'forgot.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  bool _passwordVisible = false;
  bool isChecked = false;

  @override
  void initstate() {
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16),
        child: CustomScrollView(
          slivers: [SliverFillRemaining(
            hasScrollBody: false,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 70,
              ),

              const Text('Sign In',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(19, 22, 30, 1))),
              SizedBox(
                height: 6,
              ),

              Text(
                'Please sign in with your email',
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

                    contentPadding: EdgeInsets.only(top:15,bottom:12,left:14),
                  ),
                ),
              ),

              SizedBox(
                height: 12,
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
                        color: Color.fromRGBO(201, 223, 218, 1),
                      ),
                      borderRadius: BorderRadius.circular(15.0),

                      //         borderRadius: BorderRadius.circular(15.0),
                    ),
                    hintText: "Enter Password",
                    contentPadding: EdgeInsets.only(top:14,bottom:12,left:14),
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
                  ),
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
                  Padding(
                    padding: const EdgeInsets.only(right: 75.0),
                    child: Text(
                      'Remember Me',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(73, 91, 90, 1),
                      ),
                    ),
                  ),
                  TextButton(
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                          fontSize: 14, color: Color.fromRGBO(16, 95, 80, 1)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Forgot()),
                      );

                      //signup screen
                    },
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),

              SizedBox(
                height: 36,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ThirdPage()),
                    );
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(16, 95, 80, 1),
                      minimumSize: const Size.fromHeight(30),
                      fixedSize: const Size(337, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Center(
                child: Text(
                  'Or Login Using',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(19, 22, 30, 1),
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),

              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: // <-- Icon
                      ImageIcon(
                    AssetImage("assets/fb.png"),
                    color: Colors.blue,
                    size: 24,
                  ),
                  label: Text('Login with Facebook',
                      style: TextStyle(
                          fontSize: 14, color: Color.fromRGBO(19, 22, 30, 1))),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: const Size.fromHeight(30),
                      fixedSize: const Size(337, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: // <-- Icon
                      ImageIcon(
                    AssetImage("assets/google.png"),
                    color: Colors.green,
                    size: 24,
                  ),
                  label: Text('Login with Google Plus',
                      style: TextStyle(
                          fontSize: 14, color: Color.fromRGBO(19, 22, 30, 1))),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: const Size.fromHeight(30),
                      fixedSize: const Size(337, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ),
              // Login with Google Plus
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: ImageIcon(
                    AssetImage("assets/apple.png"),
                    color: Colors.black,
                    // color: Colors.red,
                    size: 24,
                  ),
                  label: Text('Login with Apple',
                      style: TextStyle(
                          fontSize: 14, color: Color.fromRGBO(19, 22, 30, 1))),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: const Size.fromHeight(30),
                      fixedSize: const Size(337, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ),

              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: <Widget>[
                      const Text(
                        'Didn’t Have an Account? ',
                        style: TextStyle(
                            fontSize: 15, color: Color.fromRGBO(73, 91, 90, 1)),
                      ),
                      TextButton(
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 14, color: Color.fromRGBO(16, 95, 80, 1)),
                        ),
                        onPressed: () {
                          Navigator.pop(context, true);
                          //signup screen
                        },
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ),
              ),
            ],
          ),
        )])
        )
        ),
      );

  }
}
