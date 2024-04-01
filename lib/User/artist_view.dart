import 'package:demo/User/Acheivement.dart';
import 'package:demo/User/events.dart';
import 'package:demo/User/user_homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';

class ArtistView extends StatefulWidget {
  const ArtistView({super.key});

  @override
  State<ArtistView> createState() => _ArtistViewState();
}

class _ArtistViewState extends State<ArtistView> {
  // final List<Widget>_widgetOptions={
  // }
  int _selectedIndex = 1;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/A14.png'), // Replace with your image path
                      fit: BoxFit.cover),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(40)),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromRGBO(60, 170, 212, 1),
                      Color.fromRGBO(109, 102, 101, 1),
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                      width: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: [
                          IconButton(onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UserHomepage()));
                          }, icon: Icon(CupertinoIcons.back, color: Colors.white),),
                          Spacer(),
                          Icon(CupertinoIcons.bookmark_fill,
                              color: Colors.white),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: [
                          ClipOval(
                            child: Image.asset(
                              "assets/AMLU.png",
                              height: 100,
                              width: 100,
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            children: [
                              Text(
                                "Amaleswar",
                                style: GoogleFonts.ubuntu(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Dancer",
                                    style: GoogleFonts.ubuntu(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 13,
                                  ),
                                  Text(
                                    "3y exp",
                                    style: GoogleFonts.ubuntu(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "PAYMENT    25000/-",
                          style: GoogleFonts.ubuntu(
                            fontSize: 24,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                child: Card(
                  color: Colors.red.shade50,
                  surfaceTintColor: Colors.deepOrange.shade50,
                  elevation: 4,
                  child: ListTile(
                    leading: Text(
                      "Place",
                      style: GoogleFonts.ubuntu(
                          fontSize: 15,
                          color: Color.fromRGBO(134, 135, 142, 1)),
                    ),
                    trailing: Text(
                      "Kochi",
                      style: TextStyle(
                          fontSize: 15, color: Color.fromRGBO(43, 44, 47, 1)),
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.red.shade50,
                surfaceTintColor: Colors.deepOrange.shade50,
                elevation: 4,
                child: ListTile(
                  leading: Text(
                    "Rating",
                    style: GoogleFonts.ubuntu(
                        fontSize: 15, color: Color.fromRGBO(134, 135, 142, 1)),
                  ),
                  trailing: Wrap(children: [
                    Icon(CupertinoIcons.star_fill,
                        color: Color.fromRGBO(230, 210, 28, 1)),
                    Icon(CupertinoIcons.star_fill,
                        color: Color.fromRGBO(230, 210, 28, 1)),
                    Icon(CupertinoIcons.star_fill,
                        color: Color.fromRGBO(230, 210, 28, 1)),
                    Icon(CupertinoIcons.star_fill,
                        color: Color.fromRGBO(230, 210, 28, 1)),
                    Icon(CupertinoIcons.star_fill,
                        color: Color.fromRGBO(217, 217, 217, 1)),
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Row(
                  children: [
                    Container(
                      height: 225,
                      width: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/Eventss.png'), // Replace with your image path
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Events()));
                              },
                              child: Text("Events"),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(190, 40),
                                  backgroundColor: Color.fromRGBO(227, 154, 133,
                                      1), // Set the background color
                                  foregroundColor:
                                      Color.fromRGBO(100, 43, 27, 1),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 225,
                      width: 160,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/achieve.png'), // Replace with your image path
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Acheivement()));
                              },
                              child: Text("Acheivement"),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(190, 40),
                                  backgroundColor: Color.fromRGBO(227, 154, 133,
                                      1), // Set the background color
                                  foregroundColor:
                                      Color.fromRGBO(100, 43, 27, 1),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 3),
                child: Container(
                  height: 87,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromRGBO(44, 113, 109, 1),
                          Color.fromRGBO(72, 200, 200, 1),
                        ],
                      )),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text('Book Now',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 44,
                                fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13),
                        child: Image(
                          image: AssetImage('assets/book.png'),
                          height: 67,
                          width: 102,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.ellipses_bubble_fill,
                  size: 30,
                ),
                label: _selectedIndex == 0 ? 'message' : ''),
            BottomNavigationBarItem(
                icon: CircleAvatar(child: Icon(CupertinoIcons.house,color: Colors.white,),radius: 20,backgroundColor: Color.fromRGBO(191, 68, 116, 1),),
                label: _selectedIndex == 1 ? 'Home' : ''),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person_fill, size: 30),
                label: _selectedIndex == 2 ? 'Profile' : ''),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color.fromRGBO(191, 68, 116, 1),
          unselectedItemColor: Color.fromRGBO(143, 154, 163, 1),
          selectedLabelStyle: TextStyle(color: Color.fromRGBO(191, 68, 116, 1)),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
