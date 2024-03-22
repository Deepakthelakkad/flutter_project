import 'package:demo/User/artist_view.dart';
import 'package:flutter/material.dart';

class UserHomepage extends StatefulWidget {
  const UserHomepage({super.key});

  @override
  State<UserHomepage> createState() => _UserHomepageState();
}

class _UserHomepageState extends State<UserHomepage> {
  var feature = "a";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Container(
          child: Center(
              child: Text(
            "Artists",
            style:
                TextStyle(fontSize: 25, color: Color.fromRGBO(194, 74, 107, 1)),
          )),
        ),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: feature.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 1,
                child: ListTile(
                  leading: Container(
                    child: ClipOval(
                      child: Image.asset(
                        "assets/AMLU.png",
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  trailing: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ArtistView()));
                    },
                    child: Text("Check"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Set the background color
                      foregroundColor:
                          Colors.white, // Set the text color (foreground)
                    ),
                  ),
                  title: Text("Amaleswar"),
                  subtitle: Row(
                    children: [
                      Text("Dancer"),
                      SizedBox(
                        width: 10,
                      ),
                      Text("3y exp"),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
