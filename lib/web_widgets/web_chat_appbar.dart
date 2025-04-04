import 'package:flutter/material.dart';
import 'package:watsapp_ui/info.dart';

class WebChatAppbar extends StatelessWidget {
  const WebChatAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      height: MediaQuery.of(context).size.height * 0.077,
      padding: EdgeInsets.all(10),
      color: Color.fromRGBO(43, 42, 50, 0.838),
      child: Row(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://xsgames.co/randomusers/avatar.php?g=male',
                ),
                radius: 30,
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.01),
              Text(
                whatsappMessages[0]['name'].toString(),
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          Spacer(),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search_rounded, color: Colors.grey),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
