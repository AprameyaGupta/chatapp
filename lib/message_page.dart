import 'package:chatter_box/src/generated/chatapp.pb.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MessageScreen extends StatelessWidget {
  final String username, name;
  final Function sendMessage;
  final List<Result> getMessageList;
  final TextEditingController _textController = TextEditingController();
  List<bool> whoIsSender = [];
  List messageBody = [];

  MessageScreen(
      this.username, this.name, this.sendMessage, this.getMessageList);

  void messageListFilter() {
    messageBody.clear();
    for (Result st in getMessageList) {
      if (st.getField(3) == name) {
        whoIsSender.add(true);
        messageBody.add(st.getField(4));
        print(messageBody);
      } else if (st.getField(2) == name) {
        whoIsSender.add(false);
        messageBody.add(st.getField(4));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    messageListFilter();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text(name),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: messageBody.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    margin: const EdgeInsets.only(right: 16.0),
                    child: CircleAvatar(
                      child: Text(whoIsSender[index] ? username[0] : name[0]),
                    ),
                  ),
                  title: Text(whoIsSender[index] ? username : name),
                  subtitle: Text(messageBody[index]),
                );
              },
            ),
          ),
          Divider(height: 1.0),
          Container(
            decoration: BoxDecoration(color: Theme.of(context).cardColor),
            child: _buildTextComposer(context),
          ),
        ],
      ),
    );
  }

  Widget _buildTextComposer(BuildContext context) {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).accentColor),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: <Widget>[
            Flexible(
              child: TextField(
                controller: _textController,
                decoration:
                    InputDecoration.collapsed(hintText: "Send a message to $name",),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    if (_textController.text != null) {
                      sendMessage(_textController.text, name);
                      _textController.clear();
                    }
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
