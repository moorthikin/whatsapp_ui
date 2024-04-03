import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Data/data.dart';
import 'package:whatsapp_ui/util/colors.dart';

class Appbarbox extends StatelessWidget {
  const Appbarbox(
      {super.key, required this.heightsize, required this.widthsize});
  final num heightsize;
  final num widthsize;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: messageColor,
          height: MediaQuery.of(context).size.height * heightsize,
          width: MediaQuery.of(context).size.width * widthsize,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          NetworkImage(info[5]['profilePic'].toString()),
                      radius: 20,
                    ),
                    Text(
                      info[5]['name'].toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: textColor),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
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
              )
            ],
          ),
        ),
      ],
    );
  }
}
