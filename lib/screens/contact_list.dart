import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Data/data.dart';
import 'package:whatsapp_ui/screens/mobile_chat.dart';
import 'package:whatsapp_ui/util/colors.dart';

class ContactList extends StatefulWidget {
  const ContactList({super.key});

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: info.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MobileChat(),
                ));
          },
          child: ListTile(
            tileColor: backgroundColor,
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                info[index]['profilePic'].toString(),
              ),
            ),
            title: Text(
              info[index]['name'].toString(),
              style: TextStyle(fontWeight: FontWeight.bold, color: textColor),
            ),
            subtitle: Text(
              info[index]['message'].toString(),
              style: TextStyle(fontWeight: FontWeight.w400, color: textColor),
            ),
            trailing: Text(
              info[index]['time'].toString(),
              style: TextStyle(color: textColor),
            ),
          ),
        );
      },
    );
  }
}
