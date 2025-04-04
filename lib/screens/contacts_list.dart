import 'package:flutter/material.dart';
import 'package:watsapp_ui/colors.dart';
import 'package:watsapp_ui/info.dart';
import 'package:watsapp_ui/screens/mobile_chat_screen.dart';

class ContactsList extends StatefulWidget {
  const ContactsList({super.key});

  @override
  State<ContactsList> createState() => _ContactsListState();
}

class _ContactsListState extends State<ContactsList> {
  final List<String> status = const [
    'All',
    'Unread',
    'Favourites',
    'Groups 49',
    '+',
  ];

  String selected_status = '';

  @override
  void initState() {
    super.initState();
    selected_status = status[0];
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Ask Meta AI or Search',
                hintStyle: TextStyle(color: Colors.grey),
                fillColor: Color.fromRGBO(43, 42, 50, 0.838),
                filled: true,
                prefixIcon: Icon(Icons.search_rounded, color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: BorderSide(width: 0, style: BorderStyle.none),
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: status.length,
              itemBuilder: (context, index) {
                final statu = status[index];
                return Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selected_status = statu;
                      });
                    },
                    child: Chip(
                      padding: EdgeInsets.all(4),
                      backgroundColor:
                          selected_status == statu
                              ? const Color.fromRGBO(7, 94, 84, 1)
                              : Color.fromRGBO(43, 42, 50, 0.838),

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),

                      label: Text(
                        statu,
                        style: TextStyle(
                          color:
                              selected_status == statu
                                  ? Color.fromRGBO(37, 211, 102, 1)
                                  : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 10),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text(
                'Archived',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              leading: Icon(
                Icons.archive_outlined,
                color: Colors.grey,
                size: 32,
              ),
            ),
          ),

          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: whatsappMessages.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MobileChatScreen()),
                  );
                },
                child: ListTile(
                  title: Text(
                    whatsappMessages[index]['name'].toString(),
                    style: TextStyle(fontSize: 18),
                  ),
                  subtitle: Text(
                    whatsappMessages[index]['message'].toString(),
                    style: TextStyle(fontSize: 15),
                  ),
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                      whatsappMessages[index]['profile_pic'].toString(),
                    ),
                  ),
                  trailing: Text(whatsappMessages[index]['time'].toString()),
                ),
              );
            },
          ),
          const Divider(color: backgroundColor),
        ],
      ),
    );
  }
}
