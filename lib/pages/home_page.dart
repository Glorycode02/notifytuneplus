import 'package:flutter/material.dart';
import 'package:notifytuneplus/components/mybutton.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchcontroller = TextEditingController();

  int _currentIndex = 0; // Track the current active index

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    // Define the route based on the selected tab
    String route;
    switch (index) {
      case 0:
        route = "/homepage"; // Matches your route name
        break;
      case 1:
        route = "/chats"; // Matches your route name
        break;
      case 2:
        route = "/notifications"; // Matches your route name
        break;
      case 3:
        route = "/profile"; // Matches your route name
        break;
      default:
        return; // If something goes wrong, do nothing
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
          "Notify Tune Plus +",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blue[900],
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white, // AppBar background color
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20), // Add spacing for better layout
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchcontroller,
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
                            BorderRadius.circular(12), // Rounded corners
                        borderSide: BorderSide.none, // Remove border lines
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MyButton(onPressed: () {}, text: "Rooms"),
                MyButton(onPressed: () {}, text: "People"),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Trending Tags",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            // TODO: Add Grid view of the trending tags......
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        selectedItemColor: Colors.blue[900], // Highlight color for active tab
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
