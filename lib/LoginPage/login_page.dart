
import 'package:carousel_slider/carousel_slider.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:mogo_web/CustomWidgets/ExploreAll/explore_all.dart';
import 'package:mogo_web/Products/product_details.dart';
import 'package:mogo_web/fonts.dart';
import 'package:video_player/video_player.dart';


class Login extends StatefulWidget{
  const Login({super.key});

  @override
  State<Login> createState() => _Login();
}
class _Login extends State<Login>{
  List<String> countries = ["Brazil", "Nepal", "India", "China", "USA", "Canada"];
  final TextEditingController comment = TextEditingController();
  late VideoPlayerController _videoPlayerController1;
  late ChewieController _chewieController;
  @override
  void initState() {
    super.initState();
    _videoPlayerController1 = VideoPlayerController.network(
        'https://firebasestorage.googleapis.com/v0/b/pwsinovatiq.appspot.com/o/big_buck_bunny_720p_1mb.mp4?alt=media&token=6af83637-63f4-437a-bf8a-4939caa56c82');



    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      allowFullScreen: true,
      autoPlay: true,
      looping: false,
    );

    }


  @override
  Widget build(BuildContext context){
    return DefaultTabController(length: 7, child: Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(150, 150),
        child: appBar(),
      ),
      backgroundColor: const Color.fromARGB(15, 15, 15, 15),
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
                    height: 50,
                  ),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 190),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Padding(padding: const EdgeInsets.only(top:20,bottom: 20,left: 10),
                      child:Text("Shop Our Top Picks", style: AppFonts.extraBoldStyle(fontSize: 20,fontColor: Colors.black),),),


                    const SizedBox(
                      height: 20,
                    ),
                    Padding(padding: const EdgeInsets.only(left: 20),
                      child: SizedBox(
                          height: 240,
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
                                      borderRadius: BorderRadius.all(Radius.circular(20)),
                                    ),
                                    width: 200,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Image.asset("assets/images/shoe.png",width: double.maxFinite,height: 80,),
                                        const SizedBox(
                                          height: 50,
                                        ),
                                        Text("Shoe(Black)",style: AppFonts.lightStyle(fontSize: 20,fontColor: Colors.black),),
                                        Text("Rs.249",style: AppFonts.boldStyle(fontSize: 15,fontColor: Colors.black),),
                                        Container(
                                          width: 50,
                                          height: 30,
                                          padding: const EdgeInsets.all(5),
                                          decoration: const BoxDecoration(
                                              color: Colors.lightGreen,
                                              borderRadius: BorderRadius.all(Radius.circular(20))),
                                          child: Row(
                                            children: [
                                              const Icon(Icons.star,color: Colors.white,size: 10,),
                                              Text("4.0", style: AppFonts.boldStyle(fontColor: Colors.white),)
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                ),

                                const SizedBox(
                                  width: 50,
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
                                        Image.asset("assets/images/shoe.png",width: double.maxFinite,height: 80,),
                                        const SizedBox(
                                          height: 50,
                                        ),
                                        Text("Shoe(Black)",style: AppFonts.lightStyle(fontSize: 20,fontColor: Colors.black),),
                                        Text("Rs.249",style: AppFonts.boldStyle(fontSize: 15,fontColor: Colors.black),),
                                        Container(
                                          width: 50,
                                          height: 30,
                                          padding: const EdgeInsets.all(5),
                                          decoration: const BoxDecoration(
                                              color: Colors.lightGreen,
                                              borderRadius: BorderRadius.all(Radius.circular(20))),
                                          child: Row(
                                            children: [
                                              const Icon(Icons.star,color: Colors.white,size: 10,),
                                              Text("4.0", style: AppFonts.boldStyle(fontColor: Colors.white),)
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                ),
                                const SizedBox(
                                  width: 50,
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
                                        Image.asset("assets/images/shoe.png",width: double.maxFinite,height: 80,),
                                        const SizedBox(
                                          height: 50,
                                        ),
                                        Text("Shoe(Black)",style: AppFonts.lightStyle(fontSize: 20,fontColor: Colors.black),),
                                        Text("Rs.249",style: AppFonts.boldStyle(fontSize: 15,fontColor: Colors.black),),
                                        Container(
                                          width: 50,
                                          height: 30,
                                          padding: const EdgeInsets.all(5),
                                          decoration: const BoxDecoration(
                                              color: Colors.lightGreen,
                                              borderRadius: BorderRadius.all(Radius.circular(20))),
                                          child: Row(
                                            children: [
                                              const Icon(Icons.star,color: Colors.white,size: 10,),
                                              Text("4.0", style: AppFonts.boldStyle(fontColor: Colors.white),)
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                ),
                                const SizedBox(
                                  width: 50,
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
                                        Image.asset("assets/images/shoe.png",width: double.maxFinite,height: 80,),
                                        const SizedBox(
                                          height: 50,
                                        ),
                                        Text("Shoe(Black)",style: AppFonts.lightStyle(fontSize: 20,fontColor: Colors.black),),
                                        Text("Rs.249",style: AppFonts.boldStyle(fontSize: 15,fontColor: Colors.black),),
                                        Container(
                                          width: 50,
                                          height: 30,
                                          padding: const EdgeInsets.all(5),
                                          decoration: const BoxDecoration(
                                              color: Colors.lightGreen,
                                              borderRadius: BorderRadius.all(Radius.circular(20))),
                                          child: Row(
                                            children: [
                                              const Icon(Icons.star,color: Colors.white,size: 10,),
                                              Text("4.0", style: AppFonts.boldStyle(fontColor: Colors.white),)
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                ),
                              ],
                            ),
                          )
                      ),
                    ),
                  ]
                )
              ),

                  const SizedBox(
                    height: 50,
                  ),
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
      children: [
        Expanded(
          child: Container(
            height: 100,
            color: const Color.fromARGB(5, 5, 5, 5),
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Image.asset("assets/images/logo.png",width: 120,height: 120,),
                const SizedBox(
                  width: 20,
                ),
                Flexible(child:
                Container(
                  decoration: myBoxDecoration(), //             <--- BoxDecoration here
                  child: TextField(
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none
                        ),
                        hintText: 'Search',
                        hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 18
                        ),
                        suffixIcon: Container(
                          padding: const EdgeInsets.all(15),
                          width: 18,
                          child: const Icon(Icons.search),
                        )
                    ),
                  ),
                ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 50,
                  padding: const EdgeInsets.all(10),
                  color: const Color.fromARGB(
                      255, 7, 21, 110),
                  child: Center(child: Text("B2B Request",style: AppFonts.boldStyle(fontColor: Colors.white,fontSize: 20)),),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Icon(Icons.shopping_cart,color: Color.fromARGB(
                    255, 7, 21, 110),size: 30,),
                const SizedBox(
                  width: 20,
                ),
                const Icon(Icons.person_pin,color: Color.fromARGB(
                    255, 7, 21, 110),size: 30,),
                const SizedBox(
                  width: 20,
                ),
              ],
            )
        ),),
        Container(
          color: const Color.fromARGB(
              255, 7, 21, 110),
          height: 40,
          child: TabBar(
            labelColor: Colors.white,
            labelStyle: AppFonts.boldStyle(fontColor: Colors.black,fontSize: 15),
            unselectedLabelColor: Colors.white,
            indicatorColor: Colors.lightGreen,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: const BoxDecoration(
                color: Colors.lightGreen),
            tabs: const [
              Tab(icon: Icon(Icons.explore,color: Colors.white,),),
              Tab(text: "Trending"),
              Tab(text: "Channels"),
              Tab(text: "Online Shop"),
              Tab(text: "India"),
              Tab(text: "World"),
              Tab(text: "News"),
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
      options: CarouselOptions(height: 380.0),
      items: [
    Container(
      margin: const EdgeInsets.only(left: 8,right: 8),
    decoration:
    BoxDecoration(borderRadius: BorderRadius.circular(25), image: const DecorationImage(
        image: AssetImage("images/vid.png"),
        fit: BoxFit.cover)),
    child: Chewie(controller: _chewieController)
    ),
        Container(
            decoration:
            BoxDecoration(
              borderRadius: BorderRadius.circular(25),
                image: const DecorationImage(
                    image: AssetImage("images/vid.png"),
                    fit: BoxFit.cover)
            ),
            child: Chewie(controller: _chewieController)
        ),

      ]

    );
  }
  explore(){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 200),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: const EdgeInsets.only(top: 20,bottom: 20),
            child: Text("Explore",style: AppFonts.boldStyle(fontSize: 20,fontColor: Colors.black),),
          ) ,

          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                  children:[
                    const CircleAvatar(
                      radius: 70,
                      backgroundColor:Color.fromARGB(
                          255, 2, 17, 105),
                      child: Padding(padding:EdgeInsets.all(10),
                          child:Icon(Icons.play_circle_filled_sharp,size: 50,color: Colors.white,)
                      ),),
                    const SizedBox(
                      height: 10,
                    ),
                    Text("Videos",style: AppFonts.regularStyle(fontSize: 20,fontColor: Colors.black),) ,
                  ]
              ),

              const SizedBox(
                width: 120,
              ),
              Column(
                  children:[
                    const CircleAvatar(
                        radius: 70,
                        backgroundColor: Color.fromARGB(
                            255, 2, 17, 105),
                        child:Padding(padding: EdgeInsets.all(10),
                            child: Icon(Icons.shopping_cart,size: 50,color: Colors.white,))
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text("Shop",style: AppFonts.regularStyle(fontSize: 20,fontColor: Colors.black),) ,
                  ]
              ),

              const SizedBox(
                width: 120,
              ),
              Column(
                  children:[
                    const CircleAvatar(
                        radius: 70,
                        backgroundColor: Color.fromARGB(
                            255, 2, 17, 105),
                        child: Padding(padding: EdgeInsets.all(10),
                            child: Icon(Icons.handshake,size: 50,color: Colors.white,))
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text("Insurance",style: AppFonts.regularStyle(fontSize: 20,fontColor: Colors.black),) ,
                  ]
              ),

              const SizedBox(
                width: 120,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ExploreAll()));
                },
                child: Column(
                    children:[
                      const CircleAvatar(
                          radius: 70,
                          backgroundColor: Color.fromARGB(
                              255, 2, 17, 105),
                          child: Padding(padding: EdgeInsets.all(10),
                              child: Icon(Icons.keyboard_arrow_right,size: 50,color: Colors.white,))
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text("Explore All",style: AppFonts.regularStyle(fontSize: 20,fontColor: Colors.black),) ,
                    ]
                ),
              )

            ],
          )
        ],
      ),
    );
  }
}
