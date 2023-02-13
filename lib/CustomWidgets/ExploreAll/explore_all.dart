import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:mogo_web/LoginPage/login_page.dart';

import '../../fonts.dart';


class ExploreAll extends StatefulWidget {
  const ExploreAll({super.key});

  @override
  State<ExploreAll> createState() => _ExploreAllState();
}

class _ExploreAllState extends State<ExploreAll> {
  List<String> titles = [
    "Trending",
    "Channels",
    "Online Shop",
    "India",
    "World",
    "News",
    "Sports"
  ];
  List explores = [
    {
      'image': 'images/Videos.png',
      'text': 'Videos',
    },
    {
      'image': 'images/Shop.png',
      'text': 'Shop',
    },
    {
      'image': 'images/Insurance.png',
      'text': 'Insurance',
    },
    {
      'image': 'images/computer.png',
      'text': 'Electronics',
    },
    {
      'image': 'images/apron.png',
      'text': 'Apron',
    },
    {
      'image': 'images/towels.png',
      'text': 'Towels',
    },
    {
      'image': 'images/napkins.png',
      'text': 'Napkins',
    },
    {
      'image': 'images/curtains.png',
      'text': 'Curtains',
    },
    {
      'image': 'images/cushions.png',
      'text': 'Cushions',
    },
    {
      'image': 'images/tablecloths.png',
      'text': 'Table Cloths',
    },
    {
      'image': 'images/placemats.png',
      'text': 'Placemats',
    },
  ];
  List view = [
    {
      'image': 'images/1.jpg',
      'text': 'For all your clothing needs',
    },
  ];
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size(150, 150),
          child: appBar(),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10, left: 50),
                child: GridView.builder(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      childAspectRatio: 1,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                    ),
                    itemCount: explores.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return Column(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15)),
                              ),
                              child: CircleAvatar(
                                backgroundColor:
                                const Color.fromARGB(255, 49, 48, 93),
                                radius: 80.0,
                                child: ClipRRect(
                                  child: Image.asset(
                                    explores[index]['image'],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                             Text(
                                explores[index]['text'], style: AppFonts.regularStyle(fontColor: Colors.black,fontSize: 20),
                                textAlign: TextAlign.center,
                              ),

                          ],
                      );
                    }),
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 100),
                  child: Text(
                    'Shop Now',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CarouselSlider(
                options: CarouselOptions(height: 300),
                items: [
                  Container(
                    width: 0.80 * w,
                    height: 0.25 * h,
                    margin:
                    const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        image: DecorationImage(
                            image: AssetImage("images/bg3.jpg"),
                            fit: BoxFit.cover)),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'For all your\nsummer clothing\nneeds',
                              style: TextStyle(
                                color: Color.fromARGB(255, 191, 223, 226),
                                fontSize: 20,
                                height: 1.3,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: 150,
                              height: 60,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Row(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(left: 15),
                                    child: Text(
                                      'SEE MORE',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color:
                                        Color.fromARGB(255, 162, 169, 181),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 5),
                                    child: CircleAvatar(
                                      backgroundColor:
                                      Color.fromARGB(255, 52, 51, 96),
                                      radius: 20.0,
                                      child: ClipRRect(
                                        child: Icon(Icons.keyboard_arrow_right_rounded,color: Colors.white,)
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 0.80 * w,
                    height: 0.25 * h,
                    margin:
                    const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        image: DecorationImage(
                            image: AssetImage("images/bg2.jpg"),
                            fit: BoxFit.cover)),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'For all your\nsummer clothing\nneeds',
                              style: TextStyle(
                                color: Color.fromARGB(255, 191, 223, 226),
                                fontSize: 20,
                                height: 1.3,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: 150,
                              height: 60,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Row(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(left: 15),
                                    child: Text(
                                      'SEE MORE',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color:
                                        Color.fromARGB(255, 162, 169, 181),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 5),
                                    child: CircleAvatar(
                                      backgroundColor:
                                      Color.fromARGB(255, 52, 51, 96),
                                      radius: 20.0,
                                      child: ClipRRect(
                                        child: Icon(Icons.keyboard_arrow_right_rounded,color: Colors.white,)
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
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
                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(this.context, MaterialPageRoute(builder: (context) => const Login()));
                    },
                    child: const Icon(Icons.arrow_back_sharp,size: 30,color: Color.fromARGB(255, 7, 21, 110),),
                  ),
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
  BoxDecoration myBoxDecoration() {
    return const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20))
    );
  }
}
