// ignore_for_file: library_private_types_in_public_api, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

import '../const.dart';

class User01 extends StatefulWidget {
  const User01({Key? key}) : super(key: key);

  @override
  _User01State createState() => _User01State();
}

class _User01State extends State<User01> {
  List<types.Message> _messages = [];
  final _user = const types.User(
    id: '82091008-a484-4a89-ae75-a22bf8d6f3ac',
  );
  final TextEditingController _messageController = TextEditingController();

  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      text: message.text,
    );



    setState(() {
      _messages = [textMessage, ..._messages];
    });

    _messageController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'User 01',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Chat(
              messages: _messages,
              onSendPressed: _handleSendPressed,
              user: _user,
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,

            ),
          ),
          // Container(
          //   child: Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //       children: <Widget>[
          //         Container(
          //           height: 45,
          //           width: 45,
          //           decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(5),
          //               border: Border.all(width: 1)),
          //           child: Padding(
          //             padding: const EdgeInsets.all(8.0),
          //             child: Image.asset('assets/images/safetyText.png'),
          //           ),
          //         ),
          //         SizedBox(
          //           width: 210,
          //           height: 45,
          //           child: TextField(
          //             controller: _messageController,
          //             textAlignVertical: TextAlignVertical.bottom,
          //             decoration: InputDecoration(
          //                 hintText: 'Typing a message',
          //                 hintStyle: TextStyle(
          //                   fontWeight: FontWeight.w100,
          //                   color: grey,
          //                   fontSize: 15,
          //                 ),
          //                 border: OutlineInputBorder(
          //                   borderRadius: BorderRadius.circular(5),
          //                 )),
          //           ),
          //         ),
          //         Container(
          //           width: 45,
          //           height: 45,
          //           decoration: BoxDecoration(
          //             color: Colors.blue.shade700,
          //             borderRadius: BorderRadius.circular(5),
          //           ),
          //           child: InkWell(
          //             onTap: () {
          //               final messageText = _messageController.text.trim();
          //               if (messageText.isNotEmpty) {
          //                 _handleSendPressed(types.PartialText(text: messageText));
          //               }
          //             },
          //             child: Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Image.asset('assets/images/sendCmnt.png'),
          //             ),
          //           ),
          //         )
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }
}


