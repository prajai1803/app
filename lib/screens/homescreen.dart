import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'loginscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late String _username = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUsername();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text(
            'Profile',
            style: TextStyle(
              fontSize: 16,
              fontFamily: "Marked Fool",
            ),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
          ],
          elevation: 10,
          surfaceTintColor: const Color.fromARGB(255, 0, 56, 255),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            height: 360,
            width: double.infinity,
            child: Card(
              elevation: 10,
              shadowColor: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
                side: BorderSide(color: Colors.red, width: 3),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      child: CircleAvatar(
                        radius: 59,
                        backgroundImage: NetworkImage(
                          "https://res.cloudinary.com/practicaldev/image/fetch/s--H3ErTaXk--/c_fill,f_auto,fl_progressive,h_320,q_auto,w_320/https://dev-to-uploads.s3.amazonaws.com/uploads/user/profile_image/531379/d6ac24ed-bc25-46d7-8a24-d2b3d60db4c9.png",
                        ),
                      ),
                      radius: 62,
                      backgroundColor: Colors.red,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        "Prakhar Jaiswal",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.red,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.red,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.red,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.red,
                        ),
                        Icon(
                          Icons.star_outline_outlined,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
                    ),
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              primary: Colors.red,
                              side: BorderSide(
                                width: 1,
                                color: Colors.red,
                              ),
                            ),
                            child: Text(
                              "Read Me",
                              style: TextStyle(color: Colors.red),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                          ),
                          child: Text(
                            "Give Openion",
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        drawer: Drawer(),
      ),
    );
  }

  void getUsername() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _username = prefs.getString("user") as String;
    });
  }
}
