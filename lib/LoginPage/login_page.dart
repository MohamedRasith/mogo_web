
import 'package:carousel_slider/carousel_slider.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mogo_web/CustomWidgets/choice.dart';
import 'package:mogo_web/Products/product_details.dart';
import 'package:mogo_web/fonts.dart';
import 'package:mogo_web/login.dart';
import 'package:mogo_web/login_page.dart';
import 'package:video_player/video_player.dart';


class Login extends StatefulWidget{
  const Login({super.key});

  @override
  State<Login> createState() => _Login();
}
class _Login extends State<Login>{
late final Choice choice;
  List<String> titles = [
    "Trending",
    "Channels",
    "Online Shop",
    "India",
    "World",
    "News",
    "Sports"
  ];
List<IconData> videosTr = [
  Icons.trending_up,
  Icons.music_note,
  Icons.movie_creation_outlined,
  Icons.view_stream,
  Icons.videogame_asset_rounded,
  Icons.newspaper,
  Icons.sports_volleyball_rounded,
  Icons.lightbulb_outline,
  Icons.linked_camera_sharp

];
List<String> Videotitles = [
  "Trending",
  "Music",
  "Movies",
  "Live",
  "Gaming",
  "News",
  "Sports",
  "Learning",
  "Fashion & Beauty"
];

List<IconData> explores2 = [
  Icons.home,
  Icons.kitchen,
  Icons.table_bar_sharp,
  Icons.living,
  Icons.arrow_forward_ios_rounded

];
  List<IconData> explores = [
    Icons.play_circle_filled_sharp,
    Icons.shopping_cart,
    Icons.handshake,
    Icons.computer,
    Icons.arrow_forward_ios_rounded

  ];
  List<String> countries = ["Videos", "Shop", "Insurance", "Electronics", "Explore all"];
List<String> countries2 = ["Home Linen", "Kitchen Linen", "Table Linen", "Living Linen", "Explore all"];
  final TextEditingController comment = TextEditingController();
  late VideoPlayerController _videoPlayerController1;
  late ChewieController _chewieController;
  @override
  void initState() {
    super.initState();
    _videoPlayerController1 = VideoPlayerController.network(
        'https://firebasestorage.googleapis.com/v0/b/pwsinovatiq.appspot.com/o/videoplayback.mp4?alt=media&token=1280b30c-f0c5-40d8-ac08-bcb1f783429f');




    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      allowFullScreen: true,
      aspectRatio: 19/9,
      autoPlay: true,
      looping: false,
    );

    }


  @override
  Widget build(BuildContext context){
    return DefaultTabController(length: 7, child: Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(206, 206),
        child: appBar(),
      ),
      backgroundColor: Colors.white,
      body: body(),

    ));
  }
  body(){
    return SingleChildScrollView(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  videos(),
                  const SizedBox(
                    height: 20,
                  ),
                  explore(),
                  const SizedBox(
                    height: 10,
                  ),
                  featured(),
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
                              'assets/images/card.png',
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
                              'assets/images/ontime.jpg',
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
                              'assets/images/return.png',
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
                              'assets/images/24.png',
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
                    height: 60,
                  ),
                  link()
                ],
              ),
            )

              ],
            ),
    );
  }
  BoxDecoration myBoxDecoration() {
    return const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(20))
    );
  }

  appBar(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 10,bottom: 10),
          color: Color(0xFF68AB41),
          child: Center(child: Text("Special Discount 50% for mens wear till saturday",style: AppFonts.mediumStyle(fontSize: 15,fontColor: Colors.white),),)
        ),

          Container(
            height: 100,
            padding: const EdgeInsets.only(left: 170),
            color: const Color.fromARGB(15, 15, 15, 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 10,
                ),
                Image.asset("assets/images/logo.png",width: 120,height: 120,),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 40,
                  decoration: myBoxDecoration(), //             <--- BoxDecoration here
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 600,
                        child: TextField(
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: BorderSide.none
                            ),
                            hintText: 'Search',
                              contentPadding: const EdgeInsets.only(left: 20),
                            hintStyle: const TextStyle(
                                color: Colors.grey,
                                fontSize: 15
                            ),
                              suffixIcon: Container(
                                decoration: const BoxDecoration(
                                    color:  Color(0xff32325E),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(25),
                                    bottomRight: Radius.circular(25)
                                  )
                                ),

                                child: const Icon(Icons.search,color: Colors.white,),
                              )
                          ),
                        ),
                      )
                    ],
                  )
                  ),


                const SizedBox(
                  width: 20,
                ),
                const SizedBox(
                  width: 20,
                ),
                const Icon(Icons.favorite_border,color: Color(0xff32325E),size: 30,),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginPage()));
                  },
                  child: const Icon(Icons.person_pin,color: Color(0xff32325E),size: 30,),
                ),
                const SizedBox(
                  width: 20,
                ),
                Icon(Icons.shopping_cart,color: Color(0xff32325E),size: 30),
                const SizedBox(
                  width: 10,
                ),
                Text("My Cart\n Rs.0.0",)
              ],
            )
        ),
        Container(
          color:Color(0xff32325E),
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [

              Container(
                height: 40,
                margin: const EdgeInsets.only(left: 160,right: 10),
                padding: const EdgeInsets.only(left: 10,right: 10),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1,
                          spreadRadius: 1
                      )
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(10),
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Tooltip(
                      message: "select video category",
                      child: TextButton.icon(
                          icon: const Icon(Icons.menu,color: Colors.black,),
                          label: Text("Categories",style: AppFonts.mediumStyle(fontSize: 15,fontColor: Colors.black),),
                          onPressed: () {
                            showMenu(
                                context: context,
                                position: const RelativeRect.fromLTRB(120, 200, 100, 100),
                                items: List.generate(Videotitles.length, (index) {
                                  return PopupMenuItem(
                                      value: index,
                                      onTap: () => countries,
                                      child: Wrap(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 10),
                                            child: Icon(
                                              videosTr[index],
                                              color: Colors.black,
                                            ),
                                          ),
                                          Padding(padding: const EdgeInsets.only(left: 20), child: Text(Videotitles[index]))
                                        ],
                                      ));
                                }));
                          }),
                    ),
                    Icon(Icons.keyboard_arrow_down_rounded,color: Colors.black,)
                  ],
                )
              ),
              Expanded(
                child: Container(
                  color: const Color(0xff32325E),
                  height: 40,
                  child: TabBar(
                    isScrollable: true,
                    labelColor: Colors.white,
                    labelStyle: AppFonts.mediumStyle(fontColor: Colors.black,fontSize: 15),
                    unselectedLabelColor: Colors.white,
                    indicatorColor: const Color(0xFF68AB41),
                    labelPadding: const EdgeInsets.symmetric(horizontal: 15.0),
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: const BoxDecoration(
                        color: Color(0xFF68AB41)),
                    tabs: const [
                      Tab(text: "Home"),
                      Tab(text: "Channels"),
                      Tab(text: "Online Shop",),
                      Tab(text: "Insurance"),
                      Tab(text: "Travel Agency"),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: Color(0xFF68AB41),
                    borderRadius: BorderRadius.all(Radius.circular(20),
                    )
                ),
                child: Text("B2B Register",style: AppFonts.mediumStyle(fontColor: Colors.white,fontSize: 15),),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: Color(0xFF68AB41),
                    borderRadius: BorderRadius.all(Radius.circular(20),
                    )
                ),
                child: Text("Membership",style: AppFonts.mediumStyle(fontColor: Colors.white,fontSize: 15),),
              ),
              const SizedBox(
                width: 160,
              ),
            ],
          ),
        ),

      ],
    );
  }
  Widget box(String title, Color backgroundcolor){
    return Container(
        margin: const EdgeInsets.all(10),
        width: 80,
        color: backgroundcolor,
        alignment: Alignment.center,
        child: Text(title, style:const TextStyle(
            color: Colors.white,
            fontSize: 20))
    );
  }
  productDetails(){
    return SingleChildScrollView(
      child: Column(
        children: [
         Center(child: Image.asset("assets/images/jeans.png")),
          const SizedBox(
            height: 20,
          ),
          Text("Jeans", style: AppFonts.boldStyle(fontSize: 20),),
          Text("Rs.245", style: AppFonts.lightStyle(fontSize: 15,fontColor: Colors.black),),

        ],
      ),
    );
  }

  videos(){
    return CarouselSlider(
      options: CarouselOptions(height: 460.0),
      items: [
    Container(
      margin: const EdgeInsets.only(left: 13,right: 13),
    decoration:
    BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.black,),
    child:  AspectRatio(
      aspectRatio: 20/9,
      child: Chewie(controller: _chewieController,),
    ),
    ),
        Container(
            decoration:
            BoxDecoration(
              borderRadius: BorderRadius.circular(25),
                color: Colors.black
            ),
            child: Chewie(controller: _chewieController)
        ),

      ]

    );
  }
  explore(){
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          Padding(padding: const EdgeInsets.only(left: 180),
          child: Text("Category",style: AppFonts.boldStyle(fontSize: 20,fontColor: Colors.black),),
          ),
          const SizedBox(
            height: 30,
          ),
           Padding(padding: const EdgeInsets.only(left: 170),
           child: TabBar(
             isScrollable: true,
             labelColor: Colors.white,
             labelStyle: AppFonts.mediumStyle(fontColor: Colors.black,fontSize: 15),
             unselectedLabelColor: Colors.black,
             indicatorColor: const Color(0xFF68AB41),
             labelPadding: const EdgeInsets.symmetric(horizontal: 15.0),
             indicatorSize: TabBarIndicatorSize.tab,
             indicator: const BoxDecoration(
                 color: Color(0xFF68AB41),
                  borderRadius: BorderRadius.all(Radius.circular(15))
             ),
             tabs: const [
               Tab(text: "All"),
               Tab(text: "Home Linens"),
               Tab(text: "Kitchen Linens",),
               Tab(text: "Table Linens"),
             ],

           ),
           ),
          const SizedBox(
            height: 30,
          ),
          Padding(padding: const EdgeInsets.only(left: 20,right: 20),
            child:SizedBox(
              height: 288,
              child: TabBarView(
                children: [
                 productItems(),
                  productItems(),
                  productItems(),
                  productItems()
                ],
              ),
            ),
          ),

          const SizedBox(
            height: 30,
          ),

        ],
    );
  }
  featured(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 50,
        ),
        Padding(padding: const EdgeInsets.only(left: 170),
          child: Text("Our Featured Products",style: AppFonts.boldStyle(fontSize: 20,fontColor: Colors.black),),
        ),
        const SizedBox(
          height: 30,
        ),
        Center(
          child: TabBar(
            isScrollable: true,
            labelColor: Colors.white,
            labelStyle: AppFonts.mediumStyle(fontColor: Colors.black,fontSize: 15),
            unselectedLabelColor: Colors.black,
            indicatorColor: const Color(0xFF68AB41),
            labelPadding: const EdgeInsets.symmetric(horizontal: 15.0),
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: const BoxDecoration(
                color: Color(0xFF68AB41),
                borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            tabs: const [
              Tab(text: "Best Seller"),
              Tab(text: "New Collections"),

            ],

          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(padding: const EdgeInsets.only(left: 20,right: 20),
          child:SizedBox(
            height: 288,
            child: TabBarView(
              children: [
                productItems(),
                productItems(),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),

      ],
    );
  }
  link(){
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 50.0),
          height: 150,
          width: double.maxFinite,
          decoration: const BoxDecoration(
            color: Color(0xff32325E),
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
                            color: Color(0xff32325E),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: double.maxFinite,
                    width: 100,
                    child: Container(
                      color: Colors.black,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        "Submit",
                        textAlign: TextAlign.center,
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

        Padding(
          padding: const EdgeInsets.only(
            left: 80,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/logo.png",
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
                  const SizedBox(
                    height: 33,
                  ),
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
                  const SizedBox(
                    height: 40,
                  ),
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
                            child: SvgPicture.asset(
                              'assets/images/insta.svg',
                              width: 10,
                              height: 10,
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
                            child: SvgPicture.asset(
                              "assets/images/youtube.svg",
                              width: 10,
                              height: 10,
                              color: Colors.white,
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    "assets/images/contact.png",
                    height: 180,
                    width: 150,
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
  productItems(){
    return
    Padding(padding: const EdgeInsets.only(left: 20),
    child: SizedBox(
    height: 300,
    child:  GestureDetector(
    onTap: (){
    Navigator.pushReplacement(this.context, MaterialPageRoute(builder: (context) => const ProductDetails()));
    },
    child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Container(
    padding: const EdgeInsets.all(10),
    decoration: const BoxDecoration(
    color: Colors.white,
    ),
    width: 200,
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Center(child: Image.asset("assets/images/shoe.png",height: 150,),),
    const SizedBox(
    height: 50,
    ),
    RatingBarIndicator(
    rating: 4,
    itemBuilder: (context, index) => const Icon(
    Icons.star,
    color: Colors.amber,
    ),
    itemCount: 5,
    itemSize: 20.0,
    direction: Axis.horizontal,
    ),
    Text("Shoe(Black)",style: AppFonts.lightStyle(fontSize: 15,fontColor: Colors.black),),
    Text("Rs.249",style: AppFonts.boldStyle(fontSize: 15,fontColor: Colors.black),),
    ],
    )
    ),

    const SizedBox(
    width: 80,
    ),
    Container(
    padding: const EdgeInsets.all(10),
    decoration: const BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    width: 200,
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Center(child: Image.asset("assets/images/plates.png",height: 150,),),
    const SizedBox(
    height: 50,
    ),
    RatingBarIndicator(
    rating: 3,
    itemBuilder: (context, index) => const Icon(
    Icons.star,
    color: Colors.amber,
    ),
    itemCount: 5,
    itemSize: 20.0,
    direction: Axis.horizontal,
    ),
    Text("Glass Plates",style: AppFonts.lightStyle(fontSize: 15,fontColor: Colors.black),),
    Text("Rs.400",style: AppFonts.boldStyle(fontSize: 15,fontColor: Colors.black),),

    ],
    )
    ),
    const SizedBox(
    width: 80,
    ),
    Container(
    padding: const EdgeInsets.all(10),
    decoration: const BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    width: 200,
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Center(child: Image.asset("assets/images/bed.png",height: 150,),),
    const SizedBox(
    height: 50,
    ),
    RatingBarIndicator(
    rating: 3.5,
    itemBuilder: (context, index) => const Icon(
    Icons.star,
    color: Colors.amber,
    ),
    itemCount: 5,
    itemSize: 20.0,
    direction: Axis.horizontal,
    ),
    Text("Bed Cloth",style: AppFonts.lightStyle(fontSize: 15,fontColor: Colors.black),),
    Text("Rs.300",style: AppFonts.boldStyle(fontSize: 15,fontColor: Colors.black),),
    ],
    )
    ),
    const SizedBox(
    width: 80,
    ),
    Container(
    padding: const EdgeInsets.all(10),
    decoration: const BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    width: 200,
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Center(child: Image.asset("assets/images/bt.png",height: 150,),),
    const SizedBox(
    height: 50,
    ),
    RatingBarIndicator(
    rating: 2.75,
    itemBuilder: (context, index) => const Icon(
    Icons.star,
    color: Colors.amber,
    ),
    itemCount: 5,
    itemSize: 20.0,
    direction: Axis.horizontal,
    ),
    Text("Techfire Neckband",style: AppFonts.lightStyle(fontSize: 15,fontColor: Colors.black),),
    Text("Rs.490",style: AppFonts.boldStyle(fontSize: 15,fontColor: Colors.black),),
    ],
    )
    ),
    ],
    ),
    )
    ),
    );
  }
}
