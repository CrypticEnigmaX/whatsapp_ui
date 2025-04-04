import 'package:flutter/material.dart';
import 'package:watsapp_ui/colors.dart';
import 'package:watsapp_ui/info.dart';
import 'package:watsapp_ui/web_widgets/chat_list.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        scrolledUnderElevation: 0,
        elevation: 0,

        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                'https://xsgames.co/randomusers/avatar.php?g=male',
              ),
            ),
            SizedBox(width: 20),
            Text(whatsappMessages[0]['name'].toString()),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.video_call_rounded)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined)),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(child: ChatList()),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: backgroundColor)),
                color: backgroundColor,
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.emoji_emotions_outlined,
                      color: Colors.grey,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Message',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.attach_file_outlined,
                          color: Colors.grey,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.currency_rupee_outlined,
                          color: Colors.grey,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.grey,
                        ),
                      ),
                    ],
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
