import 'package:flutter/material.dart';
import 'package:whatsapp_ui/util/colors.dart';

class ContactBox extends StatefulWidget {
  const ContactBox({super.key});

  @override
  State<ContactBox> createState() => _ContactBoxState();
}

class _ContactBoxState extends State<ContactBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: messageColor,
      height: MediaQuery.of(context).size.height * 0.77,
      width: MediaQuery.of(context).size.width * 0.25,
    );
  }
}
