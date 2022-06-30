import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomCard extends StatelessWidget {
  String name = "";
  String image = "";
  CustomCard({Key? key, required this.name, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shadowColor: Colors.red,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
        side: BorderSide(color: Colors.red, width: 3),
      ),
      child: Container(
        height: 360,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 62,
                backgroundColor: Colors.red,
                child: CircleAvatar(
                  radius: 59,
                  backgroundImage: NetworkImage(
                    image,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  name,
                  style: const TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
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
            const Padding(
              padding: EdgeInsets.all(10),
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
                        side: const BorderSide(
                          width: 1,
                          color: Colors.red,
                        ),
                      ),
                      child: const Text(
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
                    child: const Text(
                      "Give Openion",
                    ),
                    onPressed: () {
                      bottomSheet(context);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void bottomSheet(context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadiusDirectional.only(
        topEnd: Radius.circular(25),
        topStart: Radius.circular(25),
      ),
    ),
    builder: (context) => Container(
      height: 330,
      width: 360,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8),
            child: Text("Select one option"),
          ),
          ListTile(
              leading: Icon(Icons.star_rate),
              title: Text("5 Star"),
              onTap: () {}),
          ListTile(
              leading: Icon(Icons.star_rate),
              title: Text("4 Star"),
              onTap: () {}),
          ListTile(
              leading: Icon(Icons.star_rate),
              title: Text("3 Star"),
              onTap: () {}),
          ListTile(
              leading: Icon(Icons.star_rate),
              title: Text("2 Star"),
              onTap: () {}),
          ListTile(
              leading: Icon(Icons.star_rate),
              title: Text("1 Star"),
              onTap: () {}),
          ListTile(
            leading: Icon(Icons.yard),
            title: Text("Worst"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    ),
  );
}
