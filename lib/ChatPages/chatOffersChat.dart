// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:guido/homePageScreens/chat.dart';

class ChatOffer_Chat extends StatefulWidget {
  const ChatOffer_Chat({super.key});

  @override
  State<ChatOffer_Chat> createState() => _ChatOffer_ChatState();
}

class _ChatOffer_ChatState extends State<ChatOffer_Chat> {
  get index => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(chatDetail[index].title),
      ),
    );
  }
}
