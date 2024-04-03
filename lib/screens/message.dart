import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Data/data.dart';
import 'package:whatsapp_ui/screens/alignleft.dart';
import 'package:whatsapp_ui/screens/alignright.dart';

class MessageChat extends StatefulWidget {
  const MessageChat({super.key});

  @override
  State<MessageChat> createState() => _MessageChatState();
}

class _MessageChatState extends State<MessageChat> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'].toString() == 'true') {
          return AlignrightBox(
              message: messages[index]['text'].toString(),
              time: messages[index]['time'].toString());
        } else {
          return AlignLeftBox(
              message: messages[index]['text'].toString(),
              time: messages[index]['time'].toString());
        }
      },
    );
  }
}
