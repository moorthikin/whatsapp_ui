import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Data/data.dart';
import 'package:whatsapp_ui/util/colors.dart';

class CustomChatAppbar extends StatelessWidget {
  const CustomChatAppbar(
      {super.key, required this.heightsize, required this.widthsize});
  final num heightsize;
  final num widthsize;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: messageColor,
      height: MediaQuery.of(context).size.height * heightsize,
      width: MediaQuery.of(context).size.width * widthsize,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(info[0]['profilePic'].toString()),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
                color: textColor,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.menu_open_sharp),
                color: textColor,
              )
            ],
          )
        ],
      ),
    );
  }
}
