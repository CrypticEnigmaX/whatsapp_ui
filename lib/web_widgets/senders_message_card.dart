import 'package:flutter/material.dart';

class SendersMessageCard extends StatelessWidget {
  final String message;
  final String time;
  const SendersMessageCard({
    super.key,
    required this.message,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: Colors.teal,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 10,
                  right: 30,
                  top: 5,
                  bottom: 20,
                ),
                child: Text(message, style: TextStyle(fontSize: 16)),
              ),
              Positioned(
                right: 10,
                bottom: 2,
                child: Row(
                  children: [
                    Text(
                      time,
                      style: TextStyle(fontSize: 13, color: Colors.white60),
                    ),
                    SizedBox(width: 5),
                    Icon(Icons.done_all, size: 20, color: Colors.white60),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
