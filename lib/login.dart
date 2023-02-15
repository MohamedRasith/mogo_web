import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mogo_web/LoginPage/login_page.dart';


class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/backb.jpg"),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.white70, BlendMode.lighten)
          )
        ),
        child: Body(),
      ),
      bottomNavigationBar: bottom(),
    );
  }

  Body() {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Center(
            child: Image.asset(
              'assets/images/logo.png',
              width: 180,
              height: 50,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Sign In',
            style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 51, 47, 90),
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 330,
            width: 335,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2, // soften the shadow//extend the shadow
                ),
              ],
            ),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: w * 0.20,
                    child: const Text(
                      'Username',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 66, 63, 88),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    width: w * 0.20,
                    height: 37,
                    child: TextFormField(
                        textAlign: TextAlign.start,
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 10.0),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 0.3, color: Color.fromARGB(255, 12, 6, 6)),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 0.3,
                                color: Color.fromARGB(255, 28, 22, 20)),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: w * 0.20,
                    child: const Text(
                      'Password',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 66, 63, 88),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    width: w * 0.20,
                    height: 37,
                    child: TextFormField(
                      obscureText: true,
                      textAlign: TextAlign.start,
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 10.0),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 0.3, color: Color.fromARGB(255, 12, 6, 6)),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 0.3, color: Color.fromARGB(255, 28, 22, 20)),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: w * 0.20,
                    height: 37,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Login()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 26, 182, 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          )),
                      child: const Text(
                        "Sign In",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      OutlinedButton(
                        onPressed: () {

                        },
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                        ),
                        child: const Text(
                          'Sign Up/\nCreate Account',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 137, 137, 147),
                          ),
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                        ),
                        child: const Text(
                          'Forgot Password',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 202, 151, 145),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Login With',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 70, 68, 82),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 35,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 50,
                  width: 160,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 10, 27, 101),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0),
                    ),
                  ),
                  child: Row(
                    children: const [
                      SizedBox(
                        width: 40,
                      ),
                      Icon(
                        Icons.facebook_sharp,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Facebook",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 234, 246, 252),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 1,
              ),
              InkWell(
                onTap: () {},
                child: Container(

                    height: 50,
                    width: 160,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 26, 182, 14),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0),
                      ),
                    ),
                    child: Row(
                      children:  [
                        const SizedBox(
                          width: 30,
                        ),
                        const Text(
                          "Google",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        SvgPicture.asset(
                            'assets/images/google.svg',
                          ),
                      ],
                    )),
              ),
              const SizedBox(
                width: 40,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Text("Copyright © 2023 MOGO. All rights reserved")

            ],
          ),
    );
  }
  bottom(){
    return Container(
      height: 7,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,//Starting point
          end: Alignment.centerRight,//Ending point
          stops: [0.5, 0], //First Part is the amount of space the first color has
          //occupy and the second parameter is the space that is to be occupied by
          //mixture of both colors.
          colors: [Color.fromARGB(255, 10, 27, 101), Colors.green], // List of colors
        ),
      ),
    );
  }
}
