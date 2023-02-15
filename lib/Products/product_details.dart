

import 'package:count_stepper/count_stepper.dart';
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
  bool? isChecked = true;
  @override
  Widget build(BuildContext context){
    return DefaultTabController( length: 4,
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
        color: Colors.white,
        child: Column(

          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(padding: const EdgeInsets.only(left: 20,right: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(padding: const EdgeInsets.only(left: 20,right: 30),
                        child: SingleChildScrollView(
                            child:  GestureDetector(
                              onTap: (){
                                Navigator.pushReplacement(this.context, MaterialPageRoute(builder: (context) => const ProductDetails()));
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                      ),
                                      width: 100,
                                      child:
                                          Image.asset("assets/images/shoe.png",width: double.maxFinite,height: 80,),

                                      ),


                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                      ),
                                      width: 100,
                                      child:
                                          Image.asset("assets/images/shoe.png",width: double.maxFinite,height: 80,),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(20)),
                                    ),
                                    width: 100,
                                    child:
                                    Image.asset("assets/images/shoe.png",width: double.maxFinite,height: 80,),

                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(20)),
                                    ),
                                    width: 100,
                                    child:
                                    Image.asset("assets/images/shoe.png",width: double.maxFinite,height: 80,),

                                  ),
                                ],
                              ),
                            )
                        ),
                      ),
                    ]
                ),
                Image.asset("assets/images/shoe.png"),
                const SizedBox(
                  width: 30,
                ),
                SizedBox(
                  width: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Shoe(Black)", style: AppFonts.lightStyle(fontSize: 20,fontColor: Colors.black),),
                      Text("Rs.249", style: AppFonts.boldStyle(fontSize: 15,fontColor: Colors.black),),
                      const SizedBox(
                        height: 15,
                      ),
                      colorAndsize(),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text("Add Items",style: AppFonts.boldStyle(fontSize: 15,fontColor: Colors.black),),
                              const SizedBox(
                                height: 10,
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
                              ),

                            ],
                          ),

                        ],
                      ),
                      const SizedBox(
                        height: 20,
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
                          Text("Strong Rubber",style: AppFonts.boldStyle(fontSize: 10,fontColor: Colors.black),),
                          const SizedBox(
                            width: 100,
                          ),
                          Text("Enterprises",style: AppFonts.boldStyle(fontSize: 10,fontColor: Colors.black),),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 200,
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(
                                  255, 26, 182, 14),
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
                                Text("ADD TO CART",style: AppFonts.boldStyle(fontColor: Colors.white,fontSize: 15)),
                                const SizedBox(
                                  width: 10,
                                ),
                                const CircleAvatar(
                                  backgroundColor:Colors.white,
                                  child: Padding(padding: EdgeInsets.all(2),
                                    child:Icon(Icons.arrow_forward,color: Color.fromARGB(
                                        255, 26, 182, 14),
                                  ),
                                  ),),
                              ],

                            ),),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
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
                        ],
                      )


                    ],
                  )),

            ])
            ),
            const SizedBox(
              height: 30,
            ),
        Padding(padding: const EdgeInsets.only(left: 20,right: 20),
          child:SizedBox(
              height: 30,
              child: Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 44, 6, 108),
                  borderRadius: BorderRadius.all(Radius.circular(25))
                ),
                child: TabBar(
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.white,
                  labelStyle: AppFonts.extraBoldStyle(fontColor: Colors.white),
                  indicatorColor: const Color.fromARGB(
                    255, 26, 182, 14),
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Color.fromARGB(
                          255, 26, 182, 14),),
                  tabs: const [
                    Tab(text: "About Product"),
                    Tab(text: "Company Reviews"),
                    Tab(text: "Discussions"),
                    Tab(text: "Customer Reviews"),
                  ],
                ),
              )
            ),
        ),
            const SizedBox(
              height: 30,
            ),
        Padding(padding: const EdgeInsets.only(left: 20,right: 20),
          child:SizedBox(
            height: 450,
              child: TabBarView(
                children: [
                  about(),
                  chat(),
                  discussion(),
                  cutomerReview()
                ],
              ),
            ),
        ),
            related(),
            const SizedBox(
              height: 30,
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
        Container(
            height: 100,
            color: const Color.fromARGB(15, 15, 15, 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Login()));
                  },
                  child: const Icon(Icons.arrow_back,color: Color.fromARGB(255, 44, 6, 108),),
                ),

                const SizedBox(
                  width: 10,
                ),
                Image.asset("assets/images/logo.png",width: 120,height: 120,),
                const SizedBox(
                  width: 20,
                ),
                Container(
                    width: 400,
                    height: 40,
                    decoration: myBoxDecoration(), //             <--- BoxDecoration here
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 400,
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
                                suffixIcon: const Icon(Icons.search)
                            ),
                          ),
                        )
                      ],
                    )
                ),


                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 40,
                  width: 240,
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    color: Color.fromARGB(
                        255, 26, 182, 14),
                  ),
                  child: Center(child: Text("B2B Registration",style: AppFonts.boldStyle(fontColor: Colors.white,fontSize: 15)),),
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
        ),
        Container(
          color: const Color.fromARGB(
              255, 7, 21, 110),
          height: 40,
          child: TabBar(
            labelColor: Colors.white,
            labelStyle: AppFonts.boldStyle(fontColor: Colors.black,fontSize: 15),
            unselectedLabelColor: Colors.white,
            indicatorColor: const Color.fromARGB(
    255, 26, 182, 14),
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: const BoxDecoration(
                color: Color.fromARGB(
    255, 26, 182, 14),
    ),
            tabs: const [
              Tab(icon: Icon(Icons.explore,color: Colors.white,),),
              Tab(text: "Trending"),
              Tab(text: "Channels"),
              Tab(text: "Online Shop"),
              Tab(text: "India"),
              Tab(text: "Tour Operator"),
              Tab(text: "Insurance"),
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
        const SizedBox(
          height: 50,
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: chatField(),
        )

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
          Checkbox(
            value: isChecked,
            fillColor: MaterialStateColor.resolveWith((states) => Colors.purple),
            shape: CircleBorder(),
            onChanged: (bool? value) {
              setState(() {
                isChecked = value;
              });
            },
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
          height: 10,
        ),

          ],
    );
  }
  chatField(){
    return Container(
      margin: const EdgeInsets.all(15.0),
      height: 61,
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(35.0),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 3),
                      blurRadius: 5,
                      color: Colors.grey)
                ],
              ),
              child: Row(
                children: [
                  IconButton(
                      icon: Icon(Icons.face , color: Colors.blue[900],), onPressed: () {}),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Type Something...",
                          hintStyle: TextStyle( color:    Colors.grey[300]),
                          border: InputBorder.none),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.photo_camera ,  color: Colors.blue[900]),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.attach_file ,  color: Colors.blue[900]),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
          const SizedBox(width: 15),
          Container(
            padding: const EdgeInsets.all(15.0),
            decoration:  BoxDecoration(
                color: Colors.blue[900], shape: BoxShape.circle),
            child: InkWell(
              child: const Icon(
                Icons.keyboard_voice,
                color: Colors.white,
              ),
              onLongPress: () {
              },
            ),
          )
        ],
      ),
    ) ;
  }
  about(){
    return Padding(padding: const EdgeInsets.only(left: 20,right: 20),
      child: Column(
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
        ],
      ),
    );
  }
  related(){
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 100),
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 1,
                  blurRadius: 10

              )]
        ),
        child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Padding(padding: const EdgeInsets.only(top:20,bottom: 20,left: 10),
                child:Text("Related Products", style: AppFonts.extraBoldStyle(fontSize: 20,fontColor: Colors.black),),),


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
    color: Color.fromARGB(
    255, 26, 182, 14),

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
                            width: 60,
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
    color: Color.fromARGB(
    255, 26, 182, 14),

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
                            width: 60,
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
    color: Color.fromARGB(
    255, 26, 182, 14),

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
                            width: 60,
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
    color: Color.fromARGB(
    255, 26, 182, 14),

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
    );
  }
}
