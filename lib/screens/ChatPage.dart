import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/config/Palette.dart';
import 'package:whatsapp_ui_clone/models/Chat.dart';
import 'package:whatsapp_ui_clone/models/Messages.dart';

class ChatPage extends StatefulWidget {
  final Messages messages;

  const ChatPage({Key key, this.messages}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final List<Chat> chatList = [
    Chat("Selam nasılsın?", 1, 11.20),
    Chat("iyiyim sen nasılsın? Nasıl gidiyor?", 0, 12.35),
    Chat(
        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.",
        0,
        12.55),
    Chat(
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
        1,
        13.45),
    Chat(
        " as opposed to using 'Content here, content here', making it look like readable English.",
        0,
        14.23),
    Chat(
        "All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.",
        1,
        15.12),
    Chat(
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
        1,
        16.56),
    Chat(
        " as opposed to using 'Content here, content here', making it look like readable English.",
        0,
        18.21),
    Chat(
        "All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.",
        1,
        22.30),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Palette().whatsAppBarGreen,
        automaticallyImplyLeading: false,
        flexibleSpace: SafeArea(
          child: Container(
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                CircleAvatar(
                  backgroundImage:
                      NetworkImage(widget.messages.otherUserImageUrl),
                  maxRadius: 20.0,
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.messages.otherUserName,
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.white),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        widget.messages.messageDate,
                        style: TextStyle(color: Colors.white, fontSize: 12.0),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.videocam,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.call,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 55),
            child: GestureDetector(
              onTap: () {
                FocusScope.of(context).requestFocus(new FocusNode());
              },
              child: ListView.builder(
                  itemCount: chatList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        print(chatList[index].type);
                      },
                      child: Container(
                        padding: EdgeInsets.only(
                            top: 8,
                            bottom: 8,
                            left: chatList[index].type == 0 ? 48 : 16,
                            right: chatList[index].type != 0 ? 48 : 16),
                        child: Align(
                          alignment: chatList[index].type == 0
                              ? Alignment.topRight
                              : Alignment.topLeft,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: chatList[index].type != 0
                                    ? Radius.circular(0)
                                    : Radius.circular(8),
                                topRight: chatList[index].type != 0
                                    ? Radius.circular(8)
                                    : Radius.circular(0),
                                bottomRight: Radius.circular(8),
                                bottomLeft: Radius.circular(8),
                              ),
                              border: Border.all(
                                  width: 0.35,
                                  color: chatList[index].type != 0
                                      ? Colors.grey
                                      : Colors.transparent),
                              color: chatList[index].type == 0
                                  ? Colors.lightGreen[200]
                                  : Colors.white,
                            ),
                            padding: EdgeInsets.all(16),
                            child: Text(
                              chatList[index].message,
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.only(bottom: 5),
              height: 50,
              width: double.infinity,
              color: Colors.transparent,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Icon(
                              Icons.emoji_emotions_outlined,
                              color: Colors.grey,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: TextField(
                                autofocus: false,
                                decoration: InputDecoration(
                                    hintText: "Mesaj giriniz...",
                                    hintStyle:
                                        TextStyle(color: Colors.grey.shade500),
                                    border: InputBorder.none),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6),
                            child: Icon(
                              Icons.attach_file,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Icon(
                              Icons.local_see,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: Palette().whatsAppBarGreen,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(
                          Icons.mic,
                          color: Colors.white,
                          size: 25,
                        )),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
