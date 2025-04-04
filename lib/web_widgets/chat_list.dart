import 'package:flutter/material.dart';
import 'package:watsapp_ui/info.dart';
import 'package:watsapp_ui/web_widgets/my_card.dart';
import 'package:watsapp_ui/web_widgets/senders_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // physics: NeverScrollableScrollPhysics(),
      itemCount: chatMessages.length,
      itemBuilder: (context, index) {
        if (chatMessages[index]['isMe'] == true) {
          return MyCard(
            message: chatMessages[index]['message'].toString(),
            time: chatMessages[index]['time'].toString(),
          );
        }
        return SendersMessageCard(
          message: chatMessages[index]['message'].toString(),
          time: chatMessages[index]['time'].toString(),
        );
      },
    );
  }
}
