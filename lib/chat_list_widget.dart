import 'package:flutter/material.dart';
import 'package:whatsapp/User.dart';
import 'package:whatsapp/chat_item.dart';
import 'package:whatsapp/chat_item_widget.dart';

class ChatListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: <Widget>[
              ChatItemWidget(chatItem: data[index],),
              Divider(height: 10.0),
            ],
          );
        });
  }
}

List<ChatItem> data = [
  ChatItem(
      user: User(
          name: "Frank Moreno",
          avatarUrl:
              "https://whatsappbrand.com/wp-content/themes/whatsapp-brc/images/chat-thumb-android-1.png"),
      message: "Flutter es genial, Welcome to the Dart Side",
      date: DateTime.parse("2016-01-01 00:00"),
      status: ChatStatus.SENT,
      unreadCount: 5),
  ChatItem(
      user: User(
          name: "Daniel Segovia",
          avatarUrl:
              "https://grokonez.com/wp-content/uploads/2018/07/flutter-firebase-firestore-example-crud-listview-firebase-console-result.png"),
      message: "Se acabaron los bocaditos!!!",
      date: DateTime.parse("2018-01-01 00:00"),
      status: ChatStatus.RECEIVED,
      unreadCount: 0),
  ChatItem(
      user: User(
          name: "Mitsuko Quispe",
          avatarUrl:
              "https://grokonez.com/wp-content/uploads/2018/07/flutter-firebase-firestore-example-crud-listview-firebase-console-result.png"),
      message: "Para cuando la pizza?",
      date: DateTime.parse("2018-07-07 00:00"),
      unreadCount: 2,
      status: ChatStatus.VISTO),
];
