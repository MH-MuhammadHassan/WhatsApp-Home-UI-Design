import 'package:als/custom_widgets/custom_elevatedButton.dart';
import 'package:als/custom_widgets/custom_listTile_view.dart';
import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0B1014),
      appBar: AppBar(
        backgroundColor: Color(0xff0B1014),
        title: Text(
          "WhatsApp",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.camera_alt),
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert),
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
      // bottom
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0XFF0B1014), // bottom bar background color
        selectedItemColor: Colors.white, // selected icon and text color
        unselectedItemColor: Colors.white, // unselected icon and text color
        type: BottomNavigationBarType.fixed, // Ensures all labels are shown
        items: [
          /// **Chats Tab**
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {},
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color:
                          Color(0xff103629), // Background color for active tab
                      borderRadius: BorderRadius.circular(21),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Icon(Icons.chat, color: Colors.white),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.green,
                      child: Text(
                        "9",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            label: 'Chats',
          ),

          /// **Updates Tab**
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {},
              child: Stack(
                children: [
                  Icon(
                    Icons.update,
                    size: 30,
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
            label: 'Updates',
          ),

          /// **Communities Tab**
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.groups,
                size: 30,
              ),
            ),
            label: 'Communities',
          ),

          /// **Calls Tab**
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.call,
                size: 30,
              ),
            ),
            label: 'Calls',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // search bar
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Ask Meta AI or Search',
                    labelStyle: TextStyle(color: Color(0xff8D9598)),
                    // iconColor: Colors.white,
                    filled: true,
                    fillColor: Color(0xff23282C),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color(0xff8D9598),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
              ),
            ),
            // ALL, UNREAD, FAVORITES, GROPUS, +
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  // mainAxisSize: MainAxisSize.min,
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomElevatedbutton(
                      onPressed: () {},
                      child: Text(
                        "All",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                    CustomElevatedbutton(
                      onPressed: () {},
                      child: Text("Unread"),
                    ),
                    CustomElevatedbutton(
                      onPressed: () {},
                      child: Text("Favourites"),
                    ),
                    CustomElevatedbutton(
                      onPressed: () {},
                      child: Text("Groups"),
                    ),
                    CustomElevatedbutton(
                      onPressed: () {},
                      child: Icon(
                        Icons.add,
                        color: Color(0xff8D9598),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            CustomListTileView(
              name: "Ali Khan",
              message: "Hey, what's up?:",
              time: "10:45 AM",
              image: "man.jpg",
              icon: Icon(
                Icons.push_pin,
              ),
            ),
            CustomListTileView(
              name: "Sarah Ahmed",
              message: "I'll call you in a bit.",
              time: "9:30 AM",
              image: "women.jpg",
              icon: Icon(
                Icons.push_pin,
              ),
            ),
            CustomListTileView(
              name: "Zain Malik",
              message: "Check this out!",
              time: "Yesterday",
              image: "man.jpg",
              icon: Icon(
                Icons.push_pin,
              ),
            ),

            CustomListTileView(
              name: "Ayesha Tariq",
              message: "Thanks for the help! 😊",
              time: "8:15 AM",
              image: "women.jpg",
            ),
            CustomListTileView(
              name: "Bilal Raza",
              message: "Are you coming tonight?",
              time: "11:00 PM",
              image: "man.jpg",
              icon: Icon(Icons.notifications_off),
            ),
            CustomListTileView(
              name: "Hina Siddiqui",
              message: "Where are you?",
              time: "4:20 PM",
              image: "women.jpg",
            ),
            CustomListTileView(
              name: "Umer Shah",
              message: "See you soon.",
              time: "1:10 PM",
              image: "man.jpg",
            ),
            CustomListTileView(
              name: "Mariam Khan",
              message: "I got the tickets!",
              time: "5:45 PM",
              image: "women.jpg",
              icon: Icon(Icons.notifications_off),
            ),
            CustomListTileView(
              name: "Farhan Saeed",
              message: "Send me the address.",
              time: "Yesterday",
              image: "man.jpg",
            ),
            CustomListTileView(
              name: "Nida Aslam",
              message: "Hahaha! That's funny! 😂",
              time: "2:30 PM",
              image: "women.jpg",
              icon: Icon(Icons.notifications_off),
            ),
          ],
        ),
      ),

      // Floating Action Button
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff21C063),
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Color(0xff0B1014),
        ),
      ),
    );
  }
}
