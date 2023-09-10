import 'package:flutter/material.dart';

class AppBar extends StatelessWidget {
  const AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.03),
            borderRadius: BorderRadius.circular(16),
          ),
          child: IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ),
        Text(
          "Edit Profile",
          style: const TextStyle(fontSize: 28),
        ),
      ],
    );
  }
}
