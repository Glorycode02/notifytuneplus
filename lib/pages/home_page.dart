import "package:flutter/material.dart";
import "package:notifytuneplus/components/mybutton.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchcontroller = TextEditingController();

  void userclicked() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "HomePage",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              backgroundColor: Colors.deepPurple[200]),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextField(
                  controller: _searchcontroller,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(),
                    hintText: "Search....",
                  ),
                ),
                Icon(Icons.search)
              ],
            ),
            Row(
              children: [
                MyButton(onPressed: userclicked, text: "Rooms"),
                MyButton(onPressed: userclicked, text: "People"),
              ],
            ),
            Text(
              "Trending Tags",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )
            //Todo:Grid view of the trending tags......
          ],
        ),
      ),
    );
  }
}
