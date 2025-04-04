import 'package:flutter/material.dart';
import 'package:watsapp_ui/colors.dart';
import 'package:watsapp_ui/screens/contacts_list.dart';

class MobileScreenLayout extends StatefulWidget {
  const MobileScreenLayout({super.key});

  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout> {
  final List<Map<String, dynamic>> icons = [
    {'label': 'Chats', 'icon': Icons.chat},
    {'label': 'Updates', 'icon': Icons.update_sharp},
    {'label': 'Communities', 'icon': Icons.people_alt_outlined},
    {'label': 'Calls', 'icon': Icons.call_outlined},
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0,
          backgroundColor: backgroundColor,
          elevation: 0,
          title: Text(
            'WhatsApp',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.qr_code_scanner_sharp, color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.photo_camera_outlined),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_sharp)),
          ],
        ),
        body: ContactsList(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape: CircleBorder(),
          backgroundColor: tabColor,
          child: Icon(Icons.comment, color: Colors.white),
        ),
        bottomNavigationBar: BottomAppBar(
          height: 80,
          color: backgroundColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(icons.length, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      icons[index]['icon'],
                      size: 30,
                      color:
                          selectedIndex == index
                              ? const Color.fromRGBO(7, 94, 84, 1)
                              : Colors.white,
                    ),
                    SizedBox(height: 4),
                    Text(
                      icons[index]['label'],
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
