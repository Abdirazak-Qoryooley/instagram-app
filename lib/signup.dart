import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/create.dart';
import 'package:instagram_app/forget_pass.dart';
import 'package:instagram_app/home.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: signup(),
  ));
}

class signup extends StatelessWidget {
  const signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xf022333b),
      body: SafeArea(
        child: Column(
          children: [
            //back icon
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              // color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 148.0),
                        child: const Text(
                          'What\'s your mobile number',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 12.0),
                        child: const Text(
                          'Enter the email address at which you can be contacted. No',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 170.0),
                        child: const Text(
                          'One will see this on your profile',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Email address',

                              // border: InputBorder.none,
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade400)),
                              fillColor: const Color(0xff022333b),
                              filled: true,
                              hintStyle: const TextStyle(color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(18),
              margin: const EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                  color: const Color(0xff03f37c9),
                  borderRadius: BorderRadius.circular(4)),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const signup()));
                  },
                  child: const Text(
                    'Next',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(18),
              margin: const EdgeInsets.symmetric(
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const signup()));
                    },
                    child: const Text(
                      'Sign up with mobile address',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
