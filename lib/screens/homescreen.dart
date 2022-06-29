import 'package:app/screens/models/card.dart';
import 'package:app/screens/models/card_model.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
            IconButton(onPressed: () {}, icon: const Icon(Icons.logout)),
          ],
          elevation: 10,
          surfaceTintColor: const Color.fromARGB(255, 0, 56, 255),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) => CustomCard(
            name: datalist[index].name,
            image: datalist[index].image,
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
