import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:mogo_web/fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showvalue = false;
  var _showContainer;
  bool email = false;
  bool otp = true;

  @override
  void initState() {
    _showContainer = false;
    super.initState();
  }

  void show() {
    setState(() {
      _showContainer = !_showContainer;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.maxFinite,
        decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/backb.jpg"),
    fit: BoxFit.cover,
    colorFilter: ColorFilter.mode(Colors.black26, BlendMode.lighten)
    )
    ),
    child: Body()),
      bottomNavigationBar: bottom(),
    );
  }

  Body() {
    String initialCountry = 'IND';

    final TextEditingController controller = TextEditingController();
    PhoneNumber number = PhoneNumber(isoCode: 'IND');
    return SingleChildScrollView(
      child: Center(
        child: Container(
          width: 400,
          margin: const EdgeInsets.only(top: 20),
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 1
              )
            ]
          ),
          child: Column(
            children: [
              Image.asset(
                "assets/images/logo.png",
                width: 150,
                height: 60,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Login to your Account",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Phone or email",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "*",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Visibility(
                  child: const Maillog(),
                  visible: _showContainer,

              ),
              Visibility(
                visible: otp,
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 10, right: 20,top: 10,bottom: 10),
                        child: InternationalPhoneNumberInput(
                          onInputChanged: (PhoneNumber number) {
                            print(number.phoneNumber);
                          },
                          onInputValidated: (bool value) {
                            print(value);
                          },
                          selectorConfig: const SelectorConfig(
                            selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                          ),
                          ignoreBlank: false,
                          autoValidateMode: AutovalidateMode.disabled,
                          selectorTextStyle: const TextStyle(color: Colors.black,fontSize: 10),
                          initialValue: number,
                          textFieldController: controller,
                          formatInput: true,
                          keyboardType: const TextInputType.numberWithOptions(
                              signed: true, decimal: true),
                          onSaved: (PhoneNumber number) {
                            print('On Saved: $number');
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Checkbox(
                            value: this.showvalue,
                            onChanged: (bool? value) {
                              setState(() {
                                this.showvalue = value!;
                              });
                            },
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Remember me on this computer",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: const Color(0xFF68AB41),
                                ),
                                child: const Text(
                                  "Send OTP",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: const Color(0xff32325E),
                                ),
                                child: const Text(
                                  "Create New Account",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ],
                  )),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 1,
                    width: 145,
                    margin: const EdgeInsets.only(left: 10,right: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey[350],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "OR",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Container(
                    height: 1,
                    width: 145,
                    margin: const EdgeInsets.only(left: 10,right: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey[350],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
               height: 50,
                width: 250,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      email = !email;
                      otp = !otp;
                    });
                    debugPrint("clicked");
                    show();
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.grey[200],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child:
                    email ? Text("Login Using OTP",style: AppFonts.extraRegularStyle(fontSize: 15,fontColor: Colors.black),) : Text("Login Using User ID",style: AppFonts.extraRegularStyle(fontSize: 15,fontColor: Colors.black),),

                ),
              ),
            ],
          ),
        ),
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

class Maillog extends StatefulWidget {
  const Maillog({super.key});

  @override
  State<Maillog> createState() => _MaillogState();
}

class _MaillogState extends State<Maillog> {
  bool showvalue = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Text(
              "Please enter your User Id",
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            Text(
              "*",
              style: TextStyle(
                color: Colors.red,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black54)),
              hintText: "User ID",
              contentPadding: EdgeInsets.only(left: 15)),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: const [
            Text(
              "Please enter your Password",
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            Text(
              "*",
              style: TextStyle(
                color: Colors.red,
              ),
            ),
          ],
        ),
        const TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black54)),
              hintText: "Password",
              contentPadding: EdgeInsets.only(left: 15)),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Checkbox(
              value: this.showvalue,
              onChanged: (bool? value) {
                setState(() {
                  this.showvalue = value!;
                });
              },
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              "Remember me on this computer",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: TextButton(
            onPressed: () {},
            child: const Text(
              "Forgot Password?",
              style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFF68AB41),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xff32325E),
                  ),
                  child: const Text(
                    "Create New Account",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
            ),
          ],
        ),
      ],
    );
  }
}
