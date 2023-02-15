import 'package:flutter/material.dart';

class bottom extends StatefulWidget {
  const bottom({super.key});

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }

  Body() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 50.0),
          height: 150,
          width: double.maxFinite,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 7, 21, 110),
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(50.0),
                ),
                border: Border.all(
                  width: 3,
                  color: Colors.white,
                ),
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.mail,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 40,
              ),
              child: Column(
                children: const [
                  Text(
                    "Get Mail Updates & Offers",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Signup for upto date updates & offers",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 100,
            ),
            Container(
              width: 550,
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 250,
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter your Email Here",
                          contentPadding: EdgeInsets.all(20.0),
                          hintStyle: TextStyle(
                            color: Color.fromARGB(255, 7, 21, 110),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: double.maxFinite,
                    width: 100,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.black,
                          side: const BorderSide(
                            width: 2.0,
                          )),
                      child: const Text(
                        "Submit",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    'images/card.png',
                    width: 140,
                    height: 50,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Secure Payment",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 50,
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    'images/ontime.jpg',
                    width: 140,
                    height: 50,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Ontime Delivery",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 50,
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    'images/return.png',
                    width: 140,
                    height: 50,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Easy Returns",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 50,
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    'images/24.png',
                    width: 140,
                    height: 50,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "24/7 Support",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 80,
            top: 50,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "images/Logo.png",
                    height: 90,
                    width: 150,
                  ),
                  const Text(
                    "Contact Us",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.phone,
                        size: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "+919876543210",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.mail,
                        size: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "support@mogo.com",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.support_agent,
                        size: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "9.00 AM to 9.00 PM",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                width: 100,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Quick Shop",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Shirts",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      )),
                  const SizedBox(height: 10),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Kurtha",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      )),
                  const SizedBox(height: 10),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Tshirts",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      )),
                  const SizedBox(height: 10),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Kitchen products",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      )),
                  const SizedBox(height: 10),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Textile",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      )),
                ],
              ),
              const SizedBox(
                width: 100,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Quick Links",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "FAQ'S",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      )),
                  const SizedBox(height: 10),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Privacy Policy",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      )),
                  const SizedBox(height: 10),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Shipping Policy",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      )),
                  const SizedBox(height: 10),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Terms & Conditions",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      )),
                  const SizedBox(height: 10),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Returns and Exchange",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      )),
                  const SizedBox(height: 10),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Offers & Terms And Conditions",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      )),
                ],
              ),
              const SizedBox(
                width: 100,
              ),
              Column(
                children: [
                  const Text(
                    "Follow Us On",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color.fromARGB(255, 78, 77, 77),
                          ),
                          child: const Icon(
                            Icons.facebook,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: const Color.fromARGB(255, 78, 77, 77),
                            ),
                            child: Image.asset(
                              "images/insta.png",
                              width: 5,
                              height: 5,
                              color: Colors.white,
                            )),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: const Color.fromARGB(255, 78, 77, 77),
                            ),
                            child: Image.asset(
                              "images/youtube.png",
                              width: 15,
                              height: 15,
                              color: Colors.white,
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    "images/contact.png",
                    height: 180,
                    width: 150,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
