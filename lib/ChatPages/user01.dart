import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guido/const.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

class user01 extends StatefulWidget {
  const user01({super.key});

  @override
  State<user01> createState() => _user01State();
}


class Message{
  final String text;
  final DateTime timestamp;
  final bool isSender;

  Message(this.text, this.timestamp, this.isSender);
}
class _user01State extends State<user01> {
  List<types.Message> _messages = [];
  final _user = const types.User(
    id: '82091008-a484-4a89-ae75-a22bf8d6f3ac',
  );
  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: 'id',
      text: message.text,
    );
    void _addMessage(types.Message message) {
      setState(() {
        _messages.insert(0, message);
      });
    }

    _addMessage(textMessage);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: customText('user********01', 16, grey, FontWeight.w600),
      ),
      body: Chat(
          messages: _messages,
          onSendPressed: _handleSendPressed,
          user:  _user,
    ));
  }
}
