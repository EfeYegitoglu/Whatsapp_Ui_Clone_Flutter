import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/data/Data.dart';
import 'package:whatsapp_ui_clone/screens/ChatPage.dart';

class MessagesPage extends StatefulWidget {
  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ChatPage(messages: messages[index],)));
            },
            child: Container(
              height: 75.0,
              color: Colors.white,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Colors.black,
                      backgroundImage:
                          NetworkImage(messages[index].otherUserImageUrl),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  messages[index].otherUserName,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 12.0),
                                child: Text(
                                  messages[index].messageDate,
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 10.0, right: 4.0, top: 4.0),
                                child: Icon(
                                  Icons.check,
                                  color: messages[index].isViewed
                                      ? Colors.blue
                                      : Colors.grey,
                                  size: 20,
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(bottom: 12.0),
                                  child: Container(
                                    width: 300,
                                    child: Text(
                                      messages[index].lastMessage,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 14),
                                    ),
                                  ))
                            ],
                          ),
                          Divider(
                            height: 1,
                            color: Colors.grey[300],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
