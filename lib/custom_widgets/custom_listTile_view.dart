import 'package:flutter/material.dart';

class CustomListTileView extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final String image;
  final Icon? icon;
  const CustomListTileView({
    super.key,
    required this.name,
    required this.message,
    required this.time,
    required this.image,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 3),
      child: ListTile(
        onTap: () {},
        // tileColor: Colors.amber,
        leading: CircleAvatar(
          // Image.asset("assets/$image",), without CIRCILE
          // Image( image: AssetImage('assets/$image'), ), without CIRCILE
          // Image(image: NetworkImage("assets/$image"),) without CIRCILE
          // Image.network("assets/$image"), without CIRCILE
          // backgroundImage: AssetImage("assets/$image"), having rounded circle
          //  backgroundImage: NetworkImage("$image"), having rounded circle

          backgroundImage: AssetImage("assets/$image"),
        ),
        title: Text(
          name,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          message,
          style: TextStyle(color: Color(0xff8D9598)),
        ),
        trailing: Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                time,
                style: TextStyle(color: Color(0xff8D9598)),
              ),
              SizedBox(
                height: 2,
              ),
              if (icon != null) icon!, // ✅ Display only if icon is provided
            ],
          ),
        ),
      ),
    );
  }
}
