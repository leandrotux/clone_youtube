import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.black,
        title: Text("Youtube"),
        actions: [
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: () {
              print("acao: videocam");
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("acao: pesquisa");
            },
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              print("acao: conta");
            },
          )
        ],
      ),
      body: Container(),
    );
  }
}
