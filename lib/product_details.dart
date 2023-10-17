import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:scroll_to_hide_bottom_navigation_bar/scroll_to_hide_bottom_navigation_bar.dart';

class product_details extends StatefulWidget {
  const product_details({Key? key}) : super(key: key);

  @override
  State<product_details> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<product_details> {
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Levis',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
        backgroundColor: Colors.white,
        titleTextStyle: const TextStyle(color: Colors.black),
        leading: const Icon(Icons.arrow_back_outlined,color: Colors.black,),
        actions: const [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.share,color: Colors.black,),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.favorite_border,color: Colors.black,),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.shopping_bag_outlined,color: Colors.black,),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.zero,
        controller: _scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                CarouselSlider(
                  items: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        image: const DecorationImage(
                          image: AssetImage('assets/one.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    height: 550.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 4 / 3,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: const Duration(milliseconds: 800),
                    viewportFraction: 1,
                  ),
                ),
                Positioned(
                    bottom: 15,
                    left: 10,
                    child: Container(
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.grey),
                            color: Colors.white60),
                        child: const
                        Padding(
                          padding: EdgeInsets.all(4.0),
                          child:Icon(Icons.ad_units_rounded),
                          ),
                        )),
                Positioned(
                    top: 15,
                    left: 10,
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.pink.withOpacity(0.7),
                              spreadRadius: 1,
                              blurRadius: 0,
                              offset: const Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: const
                        Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text('New Arrival', style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold,color: Colors.white),
                          ),
                        ))),
                Positioned(
                    bottom: 25,
                    right: 10,
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                             border: Border.all(color: Colors.grey),
                            color: Colors.white60),
                        child: const
                        Padding(
                          padding:EdgeInsets.all(4.0),
                          child: Text('2.3* | 17', style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ))),
              ],
            ),

            Container(
              padding: EdgeInsets.zero,
              //color: Colors.black12,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0,
                            blurRadius: 1,
                            offset: const Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child:  Padding(
                        padding: const EdgeInsets.fromLTRB(10, 8, 8, 8),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
                                  Text('Lakme ',style: TextStyle(fontWeight: FontWeight.bold),),
                                  Text('Eyeconic Liquid Eyeliner 4.5ml- Black'),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.cyan,
                                        borderRadius: const BorderRadius.all(Radius.circular(5)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.2),
                                            spreadRadius: 1,
                                            blurRadius: 0.5,
                                            offset: const Offset(0, 2), // changes position of shadow
                                          ),
                                        ],
                                    ),
                                  padding: const EdgeInsets.all(2),
                                  child: const Text('4.4 ★',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
                                  const Text(' (9997 Ratings | 375 Reviews )',style: TextStyle(fontSize: 12),),
                                ],
                              ),
                               const Row(
                                children: [
                                  Text('MRP ',style: TextStyle(color: Colors.grey),),
                                  Text('₹ 260',style: TextStyle(decoration: TextDecoration.lineThrough,fontWeight: FontWeight.bold),),
                                  Text(' ₹208 '),
                                  Text('(20% OFF)',style: TextStyle(color: Colors.orangeAccent),),
                                ],
                              ),

                            ]),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 10,
                            blurRadius: 0.5,
                            offset: const Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(10, 8, 8, 8),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                child: Text('Bank Offer',style: TextStyle(fontWeight: FontWeight.bold),),
                              ),
                              Text('Extra 10% off on Bank Of Baroda credit card'),
                              Text('And Extra 5% off on Kotak credit card'),
                            ]),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    width: double.infinity,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0,
                            blurRadius: 1,
                            offset: const Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(10, 8, 8, 8),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('EMI Options Available',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text('Eligible on Bajaj Credit Card'),
                            ]),
                      ),
                    ),
                  ),Container(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    width: double.infinity,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0,
                            blurRadius: 1,
                            offset: const Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child:  Padding(
                        padding: const EdgeInsets.fromLTRB(10, 8, 8, 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                              child: Text('Size',style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                            Row(
                                children: [
                                  Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                              color: Colors.white,
                                borderRadius: const BorderRadius.all(Radius.circular(100)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    offset: const Offset(0, 2), // changes position of shadow
                                    ),
                                    ],
                                  ),
                                  child: const Text('25',style: TextStyle(fontWeight: FontWeight.bold),)),
                                  const SizedBox(width: 10,),
                              Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                              color: Colors.white,
                                borderRadius: const BorderRadius.all(Radius.circular(100)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    offset: const Offset(0, 2), // changes position of shadow
                                    ),
                                    ],
                                  ),
                                  child: const Text('25',style: TextStyle(fontWeight: FontWeight.bold),)),
                                  const SizedBox(width: 10,),

                                  Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                              color: Colors.white,
                                borderRadius: const BorderRadius.all(Radius.circular(100)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    offset: const Offset(0, 2), // changes position of shadow
                                    ),
                                    ],
                                  ),
                                  child: const Text('27',style: TextStyle(fontWeight: FontWeight.bold),)),
                                  const SizedBox(width: 10,),
                                  Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                              color: Colors.white,
                                borderRadius: const BorderRadius.all(Radius.circular(100)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    offset: const Offset(0, 2), // changes position of shadow
                                    ),
                                    ],
                                  ),
                                  child: const Text('29',style: TextStyle(fontWeight: FontWeight.bold),)),

                                ]),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 70 ,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: ScrollToHideBottomNavigationBar(
        scrollController: _scrollController,
        duration: const Duration(milliseconds: 1000),
        children:  [
          Container(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width/2.2,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: const Row(
                      children: [
                        Icon(Icons.favorite_border,color: Colors.black,),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text('WISHLIST',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                        ),
                      ],
                    )),

                Container(
                    width: MediaQuery.of(context).size.width/2.2,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(color: Colors.redAccent),
                    child: const Row(
                      children: [
                        Icon(Icons.shopping_bag_outlined,color: Colors.white,),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text('ADD TO BAG',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                        ),
                      ],
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}