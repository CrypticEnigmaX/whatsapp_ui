import 'package:flutter/material.dart';
import 'package:watsapp_ui/colors.dart';
import 'package:watsapp_ui/responsive/web_profile_bar.dart';
import 'package:watsapp_ui/screens/contacts_list.dart';
import 'package:watsapp_ui/web_widgets/chat_list.dart';
import 'package:watsapp_ui/web_widgets/web_chat_appbar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(children: [WebProfileBar(), ContactsList()]),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                WebChatAppbar(),
                Expanded(child: ChatList()),
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
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
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.attach_file_outlined,
                          color: Colors.grey,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, right: 15),
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: backgroundColor,
                              filled: true,
                              hintText: 'Type a message',
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.mic, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
