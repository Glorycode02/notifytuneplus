import "package:flutter/material.dart";
import "package:notifytuneplus/components/messagetile.dart";
import "package:notifytuneplus/components/mybutton.dart";

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  final TextEditingController _chatsearchcontroller = TextEditingController();
  int _currentIndex = 0; // Track the current active index

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    // Routing Logic done by Amini glory
    String route;
    switch (index) {
      case 0:
        route = "/homepage";
        break;
      case 1:
        route = "/chats";
        break;
      case 2:
        route = "/notifications";
        break;
      case 3:
        route = "/profile";
        break;
      default:
        return;
    }

    // Navigate only if it's a different route
    if (ModalRoute.of(context)?.settings.name != route) {
      Navigator.pushNamed(context, route);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Notify Tune +",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.teal[900],
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white, // AppBar background color
      ),
      // SizedBox(
      //   height: 30,
      // ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Chats",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Row(
                  children: [Icon(Icons.edit_square), Icon(Icons.more_vert)],
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _chatsearchcontroller,
                    decoration: InputDecoration(
                      filled: true, // Enable background color
                      fillColor: Colors.grey[200], // Light grey background
                      hintText: "Search...",
                      hintStyle: TextStyle(
                          color: Colors.grey[600]), // Greyish hint text
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey[600], // Icon inside input
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 15), // Adjust height
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(50), // Rounded corners
                        borderSide: BorderSide.none, // Remove border lines
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                MyButton(onPressed: () {}, text: "All"),
                MyButton(onPressed: () {}, text: "Personal"),
                MyButton(onPressed: () {}, text: "Groups"),
                MyButton(onPressed: () {}, text: "Favourites")
              ],
            ),
            MessageTile(
                icon: Icons.person,
                username: 'Neza Hakim',
                message: 'Se u tmrw dear devs!!',
                time: "10:00 AM",
                messagecount: 5),
            MessageTile(
                icon: Icons.person,
                username: 'Glory code',
                message: 'Hello Guys!!',
                time: "10:00 AM",
                messagecount: 5)
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        selectedItemColor: Colors.teal[900], // Highlight color for active tab
        unselectedItemColor: Colors.grey[600], // Color for inactive tabs
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Messages",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Notifications",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        backgroundColor: Colors.white, // Background color of the bar
        type: BottomNavigationBarType.fixed, // Fixed icons and labels
        elevation: 10,
      ),
    );
  }
}
