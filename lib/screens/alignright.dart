// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:whatsapp_ui/util/colors.dart';

class AlignrightBox extends StatelessWidget {
  AlignrightBox({super.key, required this.message, required this.time});
  String message;
  String time;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Card(
          color: messageColor,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 5, right: 8, bottom: 25),
                child: Text(message),
              ),
              Positioned(
                  bottom: 4,
                  right: 10,
                  child: Row(
                    children: [
                      Text(time),
                      Icon(
                        Icons.done_all,
                        color: Colors.white,
                      )
                    ],
                  ))
            ],
          )),
    );
  }
}
