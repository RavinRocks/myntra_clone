import 'package:flutter/material.dart';

class beauty_menu extends StatefulWidget {
  beauty_menu({super.key});

  @override
  State<beauty_menu> createState() => beauty_menuState();
}

class beauty_menuState extends State<beauty_menu> with TickerProviderStateMixin {

  late TabController _tabController;
  late ScrollController _controller;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 75,
            padding: EdgeInsets.zero,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.zero,
              itemCount: 15,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets/makeup.jpeg',
                            width: 50, height: 50, fit: BoxFit.fill)),
                         const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text('Fashion',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            color: Colors.black,
            width: double.infinity,
            child: const Center(
                child: Text('Signup & get Existing reward !',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),
            )),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            color: Colors.brown,
            width: double.infinity,
            height: 100,
            child: Container(
              margin: const EdgeInsets.all(10),
              color: Colors.white,
              width: double.infinity,
              height: 100,
              child: const Center(
                  child: Text(
                'New User ? \n Flat 200 Off ',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )),
            ),
          ),
          Container(
            height: 300,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.zero,
              itemCount: 15,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child:Image.asset('assets/pro.jpg', width: 250, height: 250, fit: BoxFit.fill)),
                        const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text(
                            'Fashion',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            height: 290,
            margin: const EdgeInsets.all(5),
            child: ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemCount: 15,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets/make.png', width: 250, height: 250, fit: BoxFit.fill)),
                        const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text(
                            'Fashion',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          Container(
            height: 430,
            padding: EdgeInsets.zero,
            decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/discount.jpg'),fit: BoxFit.cover)),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 69,),
                 Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Fashion Wear',style: TextStyle(fontSize: 25,color: Colors.white),),
                      Container(
                          color: Colors.black,child: const Text('Under 1999',style: TextStyle(fontSize: 25,color: Colors.white),)),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.zero,
                    itemCount: 15,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets/make.png',width: 250, height: 250, fit: BoxFit.fill)),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}