import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Data/data.dart';
import 'package:whatsapp_ui/screens/message.dart';
import 'package:whatsapp_ui/util/colors.dart';

class MobileChat extends StatefulWidget {
  const MobileChat({super.key});

  @override
  State<MobileChat> createState() => _MobileChatState();
}

class _MobileChatState extends State<MobileChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text(
          info[5]['name'].toString(),
          style: TextStyle(color: textColor),
        ),
        leading: CircleAvatar(
          backgroundImage: AssetImage("asset/image1.jpg"),
          radius: 20,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.call),
            color: textColor,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.video_call),
            color: textColor,
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: MessageChat(),
          ),
          TextField(
              decoration: InputDecoration(
            filled: true,
            fillColor: mobileChatBoxColor,
            prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.emoji_emotions),
                  color: textColor,
                )),
            suffixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.send),
                  color: textColor,
                )),
          ))
        ],
      ),
    );
  }
}
