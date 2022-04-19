import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
            length: 5,
            child: Scaffold(
              backgroundColor: Colors.white,
              body: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              print("print");
                            },
                            icon: FaIcon(
                              FontAwesomeIcons.locationDot,
                              size: 25,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            " Casablanca, Morocco",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Expanded(child: Container()),
                          InkWell(
                              onTap: () {
                                print("object");
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 20),
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.grey.withOpacity(0.5)),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 20),
                            width: 400,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Search",
                                prefixIcon: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      15, 13, 10, 15),
                                  child: FaIcon(
                                    FontAwesomeIcons.search,
                                    size: 18,
                                  ),
                                ),
                                labelStyle: TextStyle(
                                    fontSize: 14, color: Colors.grey.shade400),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: BorderSide(
                                    color: Colors.grey.shade300,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    )),
                              ),
                            ),
                          ),
                          Expanded(child: Container()),
                          InkWell(
                              onTap: () {
                                print("object");
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 20),
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white.withOpacity(0.5)),
                                alignment: Alignment.center,
                                child: FaIcon(
                                  FontAwesomeIcons.sliders,
                                  color: Colors.black,
                                  size: 22,
                                ),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      child: TabBar(
                          isScrollable: true,
                          indicatorColor: Colors.transparent,
                          labelColor: Color.fromRGBO(49, 152, 244, 100),
                          unselectedLabelColor: Colors.grey,
                          tabs: [
                            buildCategory(FontAwesomeIcons.sliders),
                            buildCategory(FontAwesomeIcons.dove),
                            buildCategory(FontAwesomeIcons.cat),
                            buildCategory(FontAwesomeIcons.dog),
                            buildCategory(FontAwesomeIcons.fishFins),
                          ]),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 300,
                      width: 800,
                      child: TabBarView(children: [
                        SingleChildScrollView(
                          child: Column(
                            children: [buildCard(), buildCard(), buildCard()],
                          ),
                        ),
                        SingleChildScrollView(
                          child: Column(
                            children: [buildCard()],
                          ),
                        ),
                        SingleChildScrollView(
                          child: Column(
                            children: [buildCard()],
                          ),
                        ),
                        SingleChildScrollView(
                          child: Column(
                            children: [buildCard()],
                          ),
                        ),
                        SingleChildScrollView(
                          child: Column(
                            children: [buildCard()],
                          ),
                        )
                      ]),
                    )
                  ]),
            )));
  }
}

Widget buildCategory(IconData icon) {
  return Container(
    child: Container(
      margin: EdgeInsets.only(right: 30),
      width: 45,
      height: 45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromRGBO(49, 152, 244, 100)),
      alignment: Alignment.center,
      child: FaIcon(
        icon,
        color: Colors.black,
        size: 22,
      ),
    ),
  );
}

Widget buildCard() {
  return Container(
      height: 230,
      child: Stack(children: [
        Positioned(
            top: 35,
            left: 20,
            child: Material(
              child: Container(
                height: 180.0,
                width: 460,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(0.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        offset: new Offset(-10.0, 10.0),
                        blurRadius: 20.0,
                        spreadRadius: 4.0)
                  ],
                ),
              ),
            )),
        Positioned(
            top: 0,
            left: 30,
            child: Card(
              elevation: 10.0,
              shadowColor: Colors.grey.withOpacity(0.5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              child: Container(
                height: 200,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("images/facebook.png"))),
              ),
            )),
        Positioned(
            top: 60,
            left: 200,
            child: Container(
              height: 150,
              width: 160,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Parrot",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF363f93),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Yasser Vlogs",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                  Divider(color: Colors.black),
                  Text(
                    "Male",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ))
      ]));
}
