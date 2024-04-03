// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/contact_list.dart';
import 'package:whatsapp_ui/util/colors.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          title: Text(
            "Whatsapp",
            style: TextStyle(fontWeight: FontWeight.bold, color: textColor),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.camera_alt_sharp,
                  color: textColor,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: textColor,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  color: textColor,
                )),
          ],
          bottom: TabBar(
              indicatorColor: tabColor,
              indicatorWeight: 2.0,
              labelColor: tabColor,
              unselectedLabelColor: textColor,
              tabs: [
                Tab(
                  child: Text("Chats"),
                ),
                Tab(
                  child: Text("Status"),
                ),
                Tab(
                  child: Text("Calls"),
                ),
              ]),
        ),
        body: ContactList(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: textColor,
          onPressed: () {},
          child: Icon(
            Icons.message,
            color: messageColor,
          ),
        ),
      ),
    );
  }
}
