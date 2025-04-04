import 'package:flutter/material.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.40,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(color: Color.fromRGBO(43, 42, 50, 0.838)),
        ),
        color: Color.fromRGBO(43, 42, 50, 0.838),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              'https://xsgames.co/randomusers/avatar.php?g=male',
            ),
            radius: 20,
          ),
          Spacer(),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.comment, color: Colors.grey, size: 30),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert, color: Colors.grey, size: 30),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
