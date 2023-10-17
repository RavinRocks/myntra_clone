import 'package:flutter/material.dart';
import 'package:myntra/beauty_menu.dart';
import 'package:myntra/product_details.dart';
import 'package:sliver_tools/sliver_tools.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'Myntra',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
      home: const home(title: 'title'),
    );
  }
}

class home extends StatefulWidget {
  const home({super.key, required this.title});
  final String title;
  @override
  State<home> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<home> with TickerProviderStateMixin {

  late TabController _tabController;
  late ScrollController _controller;

  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        padding: EdgeInsets.zero,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(0)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: const Offset(0, 5), // changes position of shadow
                  ),
                ],
              ),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                    ),
                    padding: EdgeInsets.zero,
                    margin: const EdgeInsets.fromLTRB(10, 0, 5, 0),
                    child: Image.asset('assets/logos.png',width: 30, height: 30,)),
                Container(
                  padding: EdgeInsets.zero,
                  decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('BECOME',
                          style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start),
                      Text('INSIDER >',
                          style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.yellow),
                          textAlign: TextAlign.start),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 110,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.search, size: 25),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.notifications_active_outlined,
                              size: 25),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.favorite_border, size: 25),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.shopping_cart_outlined,
                              size: 25),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ]),
            ),
            Expanded(
              child: CustomScrollView(
                controller: _scrollController,
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                              children: [
                                CategoryTitleTab(
                                    title: 'Fashion',
                                    foreground: Colors.white,
                                    background: Colors.black,
                                    iconData: Icons.brightness_auto),
                                CategoryTitleTab(
                                    title: 'Beauty',
                                    foreground: Colors.black,
                                    background: Colors.white,
                                    iconData: Icons.card_giftcard_rounded),
                              ],
                            ),
                          ),
                          beauty_menu(),
                        ],
                      ),
                    ),
                  ),
                  MultiSliver(
                      pushPinnedChildren: true,
                      //if u have multiple sticky headers
                      children: [
                        SliverPinnedHeader(
                            child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Container(
                                    color: Colors.white,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.all(5),
                                              padding: const EdgeInsets.all(5),
                                              child: CategoryTitle(
                                                title: 'Topwear',
                                                foreground: Colors.black,
                                                background: Colors.white,
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.all(5),
                                              padding: const EdgeInsets.all(5),
                                              child: CategoryTitle(title: 'Kurti', foreground: Colors.black, background: Colors.white,
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.all(5),
                                              padding: const EdgeInsets.all(5),
                                              child: CategoryTitle(
                                                title: 'Jacket',foreground: Colors.black, background: Colors.white,
                                              ),
                                            ),
                                            Container(
                                                margin: const EdgeInsets.all(5),
                                                padding:const EdgeInsets.all(5),
                                                child: CategoryTitle(
                                                  title: 'Footwear',
                                                  foreground: Colors.white,
                                                  background: Colors.redAccent,
                                                )),
                                            Container(
                                              margin: const EdgeInsets.all(5),
                                              padding: const EdgeInsets.all(5),
                                              child: CategoryTitle(
                                                title: 'Jeans',
                                                foreground: Colors.black,
                                                background: Colors.white,
                                              ),
                                            ),
                                            Container(
                                                margin: const EdgeInsets.all(5),
                                                padding: const EdgeInsets.all(5),
                                                child: CategoryTitle(
                                                  title: 'Shirt',
                                                  foreground: Colors.white,
                                                  background: Colors.redAccent,
                                                )),
                                          ],
                                        ),
                                      ],
                                    )))),
                        SliverList(
                            delegate: SliverChildBuilderDelegate(childCount: 20,
                                    (context, index) {
                                  return Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                border: Border.all(color: Colors.grey)),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  width: MediaQuery.of(context).size.width / 2.07,
                                                  child: Column(
                                                    children: [
                                                      InkWell(
                                                        onTap: () {
                                                          Navigator.push(context, MaterialPageRoute(builder: (context) => product_details(),));
                                                        },
                                                        child: Stack(children: [
                                                          Image.asset(
                                                            'assets/makeup.jpeg', fit: BoxFit.fill, height: 200, width: 180,
                                                          ),
                                                          Positioned(
                                                              bottom: 5,
                                                              left: 10,
                                                              child: Container(
                                                                  decoration: BoxDecoration(
                                                                      borderRadius: BorderRadius.circular(20),
                                                                      color: Colors.white60),
                                                                  child: const
                                                                  Padding(
                                                                    padding: EdgeInsets.all(4.0),
                                                                    child: Text('2.3* | 17', style:
                                                                    TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                                                    ),
                                                                  ))),
                                                        ]),
                                                      ),
                                                      Container(
                                                        child: const Column(
                                                          children: [
                                                            //  Text('2.38* 14k'),
                                                            Text('Menswear top', style: TextStyle(fontWeight: FontWeight.bold),),
                                                            Text('₹1200'),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                border: Border.all(color: Colors.grey)),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  width: MediaQuery.of(context).size.width /2.07,
                                                  child: Column(
                                                    children: [
                                                      InkWell(
                                                        onTap: () {
                                                          Navigator.push(context, MaterialPageRoute(builder: (context) => product_details(),));
                                                        },
                                                        child: Stack(children: [
                                                          Image.asset('assets/pro.jpg',fit: BoxFit.fill, height: 200, width: 180,),
                                                          Positioned(
                                                              bottom: 5,
                                                              left: 10,
                                                              child: Container(
                                                                  decoration:
                                                                  BoxDecoration(borderRadius:BorderRadius.circular(20),color:Colors.white60),
                                                                  child: const
                                                                  Padding( padding:EdgeInsets.all(4.0),
                                                                    child:Text('2.3* | 17', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                                                    ),
                                                                  ))),
                                                        ]),
                                                      ),
                                                      const Column(
                                                        children: [
                                                          Text('Menswear top',style: TextStyle(fontWeight: FontWeight.bold),),
                                                          Text('₹1200'),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  );
                                }))
                      ])
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton:

      Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(100)),
        height: 50,
        padding: EdgeInsets.all(2),
        width: 50,
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          elevation: 0,
          isExtended: true,
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(color: Colors.black,border: Border.all(color: Colors.grey),borderRadius: BorderRadius.circular(100)),
                child: Image.asset('assets/logos.png', width: 100, height: 100,)),
          ),

        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: const TextStyle(color: Colors.pink),
        selectedItemColor: Colors.black,
        selectedLabelStyle: const TextStyle(color: Colors.pink),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance),
              label: 'Home',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.diamond),
              label: 'Order',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: 'Profile',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_call),
              label: 'Limes',
              backgroundColor: Colors.white),
        ],
      ),
    );
  }
}

class CategoryTitle extends StatelessWidget {
  String title;
  Color background;
  Color foreground;

  CategoryTitle({
    super.key,
    this.foreground = Colors.black38,
    this.background = Colors.black12,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          border: Border.all(color: Colors.black)),
      child: Text(
        title,style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class CategoryTitleTab extends StatelessWidget {
  String title;
  Color background;
  Color foreground;
  IconData iconData;

  CategoryTitleTab({
    super.key,
    this.foreground = Colors.black38,
    this.background = Colors.black12,
    this.iconData = Icons.account_balance_wallet,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.4,
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: background,
          border: Border.all(color: Colors.black)),
      child: Row(
        children: [
          Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.asset('assets/girl.png', width: 30, height: 25,)),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 03, 10, 03),
            child:Text(title, style: TextStyle(color: foreground, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
