import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/contact_list.dart';
import 'package:whatsapp_ui/util/colors.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar(
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
          child: ContactList(),
        ),
      ],
    );
  }
}
