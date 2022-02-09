// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChitPageState createState() => _ChitPageState();
}

class _ChitPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text('Chat Page'));
  }
}
