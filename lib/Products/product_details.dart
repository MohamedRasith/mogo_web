import 'dart:js';

import 'package:count_stepper/count_stepper.dart';
import 'package:counter/counter.dart';
import 'package:flutter/material.dart';
import 'package:mogo_web/LoginPage/login_page.dart';
import 'package:mogo_web/fonts.dart';


class ProductDetails extends StatefulWidget{
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetails();
}
class _ProductDetails extends State<ProductDetails>{
  List<String> countries = ["Brazil", "Nepal", "India", "China", "USA", "Canada"];
  final TextEditingController comment = TextEditingController();
  @override
  Widget build(BuildContext context){
    return DefaultTabController( length: 3,
    child: Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(150, 150),
        child: appBar(),
      ),
      body: body(),

    ));
  }
  body(){
    return SingleChildScrollView(
      child: Container(
        color: const Color.fromARGB(15, 15, 15, 15),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(padding: const EdgeInsets.only(left: 20,right: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: product()),
                Expanded(child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("About This Product", style: AppFonts.boldStyle(fontSize: 20,fontColor: Colors.black),),
                    Text("A shoe is an item of footwear intended to protect and comfort the human foot. "
                        "They are often worn with a sock. Shoes are also used as an item of decoration and fashion. "
                        "The design of shoes has varied enormously through time and from culture to culture, with form originally being tied to function. "
                        "Though the human foot can adapt to varied terrains and climate conditions, it is still vulnerable to environmental hazards such as sharp rocks and temperature extremes, which shoes protect against. "
                        "Some shoes are worn as safety equipment, such as steel-toe boots which are required footwear at industrial worksites."
                        "\n\nAdditionally, fashion has often dictated many design elements, such as whether shoes have very high heels or flat ones. Contemporary footwear varies widely in style, complexity and cost. Basic sandals may consist of only a thin sole and simple strap and be sold for a low cost. High fashion shoes made by famous designers may be made of expensive materials, use complex construction and sell for large sums of money. Some shoes are designed for specific purposes, such as boots designed specifically for mountaineering or skiing, while others have more generalized usage such as sneakers which have transformed from a special purpose sport shoe into a general use shoe."
                        ,style: AppFonts.lightStyle(
                        fontColor: Colors.black,fontSize: 15
                    ),),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Text("Material Type:",style: AppFonts.regularStyle(fontSize: 15,fontColor: Colors.black),),
                        const SizedBox(
                          width: 100,
                        ),
                        Text("Dealer:",style: AppFonts.regularStyle(fontSize: 15,fontColor: Colors.black),),
                      ],
                    ),

                    Row(
                      children: [
                        Text("Strong Rubber",style: AppFonts.boldStyle(fontSize: 15,fontColor: Colors.black),),
                        const SizedBox(
                          width: 80,
                        ),
                        Text("Enterprises",style: AppFonts.boldStyle(fontSize: 15,fontColor: Colors.black),),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Text("Add Items",style: AppFonts.boldStyle(fontSize: 15,fontColor: Colors.black),),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 40,
                      width: 90,
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                        ]
                      ),
                      child: CountStepper(
                        min: 0,
                        textStyle: AppFonts.boldStyle(fontColor: Colors.black),
                        max: 10,
                      ),
                    )
                  ],
                ))
              ],
            )
            ),
            const SizedBox(
              height: 50,
            ),
        Padding(padding: const EdgeInsets.only(left: 20,right: 20),
          child:SizedBox(
              height: 30,
              child: TabBar(
                labelColor: Colors.black,
                labelStyle: AppFonts.extraBoldStyle(fontColor: Colors.black),
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    color: Colors.white),
                tabs: const [
                  Tab(text: "Company Reviews"),
                  Tab(text: "Discussions"),
                  Tab(text: "Customer Reviews"),
                ],
              ),
            ),
        ),
            const SizedBox(
              height: 30,
            ),
        Padding(padding: const EdgeInsets.only(left: 20,right: 20),
          child:SizedBox(
              height: MediaQuery.of(this.context).size.height,
              child: TabBarView(
                children: [
                  chat(),
                  discussion(),
                  cutomerReview()
                ],
              ),
            ),
        )
          ],
        ),
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
                    width: 50,
                    height: 30,
                    color: const Color.fromARGB(
                        255, 7, 21, 110),
                    child: Center(child: Text("B2B",style: AppFonts.boldStyle(fontColor: Colors.white,fontSize: 20)),),
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
  chat(){
    return Padding(padding: const EdgeInsets.only(left: 10,right: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 30,
        ),
        Text('10 Oct, 2018',style: AppFonts.lightStyle(fontSize: 13,fontColor: Colors.black),),
        Text("Joe Deo",style: AppFonts.extraBoldStyle(fontSize: 15,fontColor: Colors.black),),
        const SizedBox(
          height: 3,
        ),
        Container(
          width: 200,
          height: 30,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2.0,
                  spreadRadius: 2.0,
                ), //BoxShadow
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(0.0, 0.0),
                  blurRadius: 0.0,
                  spreadRadius: 0.0,
                ), //BoxShadow
              ]
          ),

          child: const Center(child: Text("This product is very Nice"),),
        ),
        const SizedBox(
          height: 30,
        ),
        Text('10 Oct, 2018',style: AppFonts.lightStyle(fontSize: 13,fontColor: Colors.black),),
        Text("Mohamed Rasith",style: AppFonts.extraBoldStyle(fontSize: 15,fontColor: Colors.black),),
        const SizedBox(
          height: 3,
        ),
        Container(
          width: 200,
          height: 30,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2.0,
                  spreadRadius: 2.0,
                ), //BoxShadow
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(0.0, 0.0),
                  blurRadius: 0.0,
                  spreadRadius: 0.0,
                ), //BoxShadow
              ]
          ),

          child: const Center(child: Text("This product is very Nice"),),
        )
      ],
    ),
    );
  }
  product(){
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/images/shoe.png"),
          const SizedBox(
            height: 20,
          ),
          Text("Shoe(Black)", style: AppFonts.lightStyle(fontSize: 20,fontColor: Colors.black),),
          Text("Rs.249", style: AppFonts.boldStyle(fontSize: 15,fontColor: Colors.black),),
          const SizedBox(
            height: 15,
          ),
          colorAndsize()
        ],
      ),
    );
  }
  cutomerReview(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
     Text('10 Oct, 2018',style: AppFonts.lightStyle(fontSize: 13,fontColor: Colors.black),),
      const SizedBox(
        height: 10,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(50))
            ),
            width: 50,
            height: 50,
            child: Center(child: Text("JD",style: AppFonts.extraBoldStyle(fontColor: Colors.white,fontSize: 15)),),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Jhon Doe", style: AppFonts.boldStyle(fontSize: 15,fontColor: Colors.black),),
              Text("This Product is very nice to use"
                ,style: AppFonts.lightStyle(
                    fontColor: Colors.black,fontSize: 15
                ),),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset("assets/images/shoe.png",width: 50,height: 50,),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset("assets/images/shoe.png",width: 50,height: 50,),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset("assets/images/shoe.png",width: 50,height: 50,),
                ],
              ),

            ],
          )
        ],
      ),
        const SizedBox(
          height: 40,
        ),
        Text('18 Dec, 2018',style: AppFonts.lightStyle(fontSize: 13,fontColor: Colors.black),),
        const SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.all(Radius.circular(50))
              ),
              width: 50,
              height: 50,
              child: Center(child: Text("MR",style: AppFonts.extraBoldStyle(fontColor: Colors.white,fontSize: 15)),),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Mohamed Rasith", style: AppFonts.boldStyle(fontSize: 15,fontColor: Colors.black),),
                Text("This Product is very nice to use and neatly smooth to walk"
                  ,style: AppFonts.lightStyle(
                      fontColor: Colors.black,fontSize: 15
                  ),),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Image.asset("assets/images/shoe.png",width: 50,height: 50,),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset("assets/images/shoe.png",width: 50,height: 50,),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset("assets/images/shoe.png",width: 50,height: 50,),
                  ],
                ),

              ],
            )
          ],
        ),


    ],);
  }
  discussion(){
    return Padding(padding: const EdgeInsets.only(left: 10,right: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(child:  Text('18 Dec, 2018',style: AppFonts.lightStyle(fontSize: 13,fontColor: Colors.black),),),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.all(Radius.circular(50))
              ),
              width: 50,
              height: 50,
              child: Center(child: Text("MR",style: AppFonts.extraBoldStyle(fontColor: Colors.white,fontSize: 15)),),
            ),
            const SizedBox(
              width: 10,
            ),
            Text("Mohamed Rasith", style: AppFonts.regularStyle(fontSize: 15,fontColor: Colors.black),),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: 200,
          height: 30,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2.0,
                  spreadRadius: 2.0,
                ), //BoxShadow
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(0.0, 0.0),
                  blurRadius: 0.0,
                  spreadRadius: 0.0,
                ), //BoxShadow
              ]
          ),

          child: const Center(child: Text("This product is very Nice"),),
        ),
        const SizedBox(
          height: 30,
        ),
        Align(
            alignment: Alignment.topRight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(50))
                      ),
                      width: 50,
                      height: 50,
                      child: Center(child: Text("JD",style: AppFonts.extraBoldStyle(fontColor: Colors.white,fontSize: 15)),),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text("Jhon Deo", style: AppFonts.regularStyle(fontSize: 15,fontColor: Colors.black),),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: 200,
                    height: 30,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ]
                    ),

                    child: const Center(child: Text("Ya Really"),),
                  ),
                )
              ],
            )
        ),

      ],
    ),
    );
  }

  colorAndsize(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Text("SELECT COLOR",style: AppFonts.regularStyle(fontColor: Colors.black,fontSize: 15),),
        const SizedBox(
          height: 3,
        ),
        Container(
          height: 50,
          child:  ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.all(Radius.circular(50))
              ),
              width: 50,
            ),

            const SizedBox(
              width: 20,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(50))
              ),
              width: 50,
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(50))
              ),
              width: 50,
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(50))
              ),
              width: 50,
            ),
          ],
        ),
    ),
        const SizedBox(
          height: 10,
        ),
        Text("SELECT SIZE",style: AppFonts.regularStyle(fontColor: Colors.black,fontSize: 15),),
        const SizedBox(
          height: 3,
        ),
        Container(
          height: 50,
          child:  ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                width: 50,
                child: const Center(child: Text("S"),),
              ),

              const SizedBox(
                width: 20,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),

                ),
                width: 50,
                child: const Center(child: Text("M"),),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                width: 50,
                child: const Center(child: Text("L"),),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                width: 50,
                child: const Center(child: Text("XL"),),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2.0,
                      spreadRadius: 2.0,
                    ), //BoxShadow
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ), //BoxShadow
                  ]
              ),
              height: 50,
              child: Center(child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("SHARE THIS",style: AppFonts.boldStyle(fontColor: const Color.fromARGB(
          255, 7, 21, 110),fontSize: 15)),
      const SizedBox(
        width: 10,
      ),
      const CircleAvatar(
        backgroundColor: Color.fromARGB(
            255, 7, 21, 110),
        child: Padding(padding: EdgeInsets.all(2),
          child:Icon(Icons.arrow_upward,color: Colors.white,),
        ),),
    ],

    ),),
            ),
            const SizedBox(
              width: 25,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              height: 50,
              child: Center(child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("ADD TO CART",style: AppFonts.boldStyle(fontColor: Colors.white,fontSize: 15)),
                  const SizedBox(
                    width: 10,
                  ),
                  const CircleAvatar(
                    backgroundColor:Colors.white,
                    child: Padding(padding: EdgeInsets.all(2),
                      child:Icon(Icons.arrow_forward,color: Colors.green,),
                    ),),
                ],

              ),),
            ),
          ],
        )

      ],
    );
  }
}
