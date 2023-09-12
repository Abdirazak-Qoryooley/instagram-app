import 'package:flutter/material.dart';
import 'package:instagram_app/create.dart';
import 'package:instagram_app/forget_pass.dart';
import 'package:instagram_app/page1.dart';

import 'my_texfield.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: true,
    home: home(),
  ));
}

class home extends StatelessWidget {
  home({Key? key}) : super(key: key);

  final usernameconroller = TextEditingController();
  final passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff022333b),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 50,
                ),
                //logo
                Image.asset(
                  'images/ins.png',
                  width: 60,
                ),
                SizedBox(
                  height: 50,
                ),

                //texfield usarname

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'UserName, email address or mobile number',

                        // border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.shade400)),
                        fillColor: Color(0xff022333b),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.white)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                //texfield password

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'password',

                        // border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.shade400)),
                        fillColor: Color(0xff022333b),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.white)),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                //login button
                Container(
                  padding: EdgeInsets.all(18),
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                      color: Color(0xff03f37c9),
                      borderRadius: BorderRadius.circular(4)),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => page1()));
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                // forget password
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => forget()));
                  },
                  child: Text(
                    'Forget Password?',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),

                //create new account button
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(
                    horizontal: 25,
                  ),
                  decoration: BoxDecoration(
                      // color: Color(0xff03f37c9),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(4)),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {},
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => home22()));
                        },
                        child: Text(
                          'Create new account',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                //meta logo
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/meta.png',
                      width: 20,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      'Meta',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
