import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';

class ArtistView extends StatefulWidget {
  const ArtistView({super.key});

  @override
  State<ArtistView> createState() => _ArtistViewState();
}

class _ArtistViewState extends State<ArtistView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                )),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                  width: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Icon(CupertinoIcons.back, color: Colors.white),
                      Spacer(),
                      Icon(CupertinoIcons.bookmark_fill, color: Colors.white),
                    ],
                  ),
                ),
                SizedBox(
                  height: 17,
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
                SizedBox(
                  height: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("PAYMENT    25000/-",style: GoogleFonts.ubuntu(
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
            height: 20,
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
                      fontSize: 15, color: Color.fromRGBO(134, 135, 142, 1)),
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
        ],
      ),
    );
  }
}
