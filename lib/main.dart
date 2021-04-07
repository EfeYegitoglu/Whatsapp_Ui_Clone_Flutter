import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/screens/MessagesPage.dart';
import 'config/Palette.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Palette().whatsAppBarGreen,
          title: Text(
            "WhatsApp",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
          centerTitle: false,
          actions: [
            IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: null),
            Padding(
              padding: const EdgeInsets.only(right: 10.0, left: 10.0),
              child: PopupMenuButton(
                  child: Icon(Icons.more_vert),
                  itemBuilder: (context) => [
                        PopupMenuItem(value: 1, child: Text("Yeni grup")),
                        PopupMenuItem(
                            value: 2, child: Text("Yeni toplu mesaj")),
                        PopupMenuItem(value: 3, child: Text("WhatsApp Web")),
                        PopupMenuItem(
                            value: 4, child: Text("Yıldızlı mesajlar")),
                        PopupMenuItem(value: 5, child: Text("Ayarlar")),
                      ]),
            )
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                text: "SOHBETLER",
              ),
              Tab(
                text: "DURUM",
              ),
              Tab(
                text: "ARAMALAR",
              ),
            ],
            indicatorColor: Colors.white,
            labelColor: Colors.white,
          ),
        ),
        body: TabBarView(
          children: [
            MessagesPage(),
            Scaffold(),
            Scaffold(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          tooltip: 'Increment',
          child: Icon(Icons.chat),
          onPressed: () {},
        ),
      ),
    );
  }
}
