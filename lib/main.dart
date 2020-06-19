import 'package:chatter_box/message_page.dart';
import 'package:flutter/cupertino.dart';
//import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:chatter_box/src/generated/chatapp.pbgrpc.dart';
import 'about_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: MyHomePage(),
    );
  }
}

// ignore: must_be_immutable
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String username = "Aprameya";
  List<String> names = [];
  MessageScreen messageScreen;
  List<Result> getMessageList = new List<Result>();
  ListView userListView = ListView(
    children: <Widget>[
      Container(
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        alignment: Alignment.center,
        child: Text(
          "Loading Users...",
          textAlign: TextAlign.center,
          textScaleFactor: 1.5,
        ),
      )
    ],
  );
  TextEditingController _searchFieldController = TextEditingController();

  static final channel = ClientChannel('10.0.2.2',
      port: 9090,
      options: const ChannelOptions(
          credentials: const ChannelCredentials.insecure()));

  static final stub = ChatAppClient(channel,
      options: CallOptions(timeout: Duration(seconds: 30)));

  @override
  void initState() {
    super.initState();
//    join(WordPair.random().toString());
    users();
    timeLooper();
  }

  void displayUsersListView() {
    setState(() {
      if (_searchFieldController.text != null ||
          _searchFieldController.text != "") {
        List<String> duplicateNamesList = [];
        for (int i = 0; i < names.length; i++) {
          if (names[i].contains(_searchFieldController.text)) {
            duplicateNamesList.add(names[i]);
          }
        }
        userListView = ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                duplicateNamesList[index],
                style: TextStyle(fontSize: 18.0),
              ),
              leading: Container(
                margin: const EdgeInsets.only(right: 16.0),
                child: CircleAvatar(
                  child: Text(
                    duplicateNamesList[index][0],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MessageScreen(username,
                        duplicateNamesList[index], message, getMessageList),
                  ),
                );
              },
            );
          },
        );
      } else {
        userListView = ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                names[index],
                style: TextStyle(fontSize: 18.0),
              ),
              leading: Container(
                margin: const EdgeInsets.only(right: 16.0),
                child: CircleAvatar(
                  child: Text(
                    names[index][0],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MessageScreen(
                        username, names[index], message, getMessageList),
                  ),
                );
              },
            );
          },
        );
      }
    });
  }

  void join(String user) async {
    try {
      JoinResponse data = await stub.join(JoinUser()..name = user);
      print(data);
    } catch (e) {
      print('ERROR join : $e');
    }
    username = user;
    print(username);
  }

  void message(String messageContent, String reciever) async {
    try {
      SendResponse res = await stub.message(SendRequest()
        ..from = username
        ..to = reciever
        ..content = messageContent);
      print(res);
    } catch (e) {
      print('ERROR message: $e');
    }
  }

  void userMessage() async {
    SendMessages x;
    try {
      x = await stub.userMessage(GetMessages()..name = username);
      getMessageList = x.getField(1);
      print("GetMessageList $getMessageList");
    } catch (e) {
      print('ERROR userMessage: $e');
    }
  }

  void users() async {
    try {
      SendUsers sendUsers = await stub.users(GetUsers()..request = 'Bhejo');
      names = sendUsers.getField(1);
      names.remove(username);
    } catch (e) {
      print('ERROR users: $e');
    }
  }

  void timeLooper() async {
    Duration duration = Duration(seconds: 2);
    for (;;) {
      users();
      userMessage();
      await Future.delayed(duration);
      displayUsersListView();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chatter Box"),
        actions: <Widget>[
          Expanded(
            child: TextField(
              controller: _searchFieldController,
              cursorColor: Colors.white,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                fillColor: Colors.blue,
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search, color: Colors.black12),
                hintText: "Search...",
                hintStyle: TextStyle(color: Colors.black38, fontSize: 20.0),
              ),
            ),
          ),
          PopupMenuButton<String>(
            itemBuilder: (BuildContext context) {
              return PopUpConstants.choices.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice,
                      style: TextStyle(
                        color: Colors.pink,
                      )),
                );
              }).toList();
            },
            onSelected: popUpMenuChoiceSelector,
          ),
        ],
      ),
      body: userListView,
    );
  }

  void popUpMenuChoiceSelector(String choice) async {
    if (choice == PopUpConstants.Signout) {
      _signOutBlock();
    }
    if (choice == PopUpConstants.About) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AboutPage(username),
        ),
      );
    }
  }

  Future<void> _signOutBlock() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          titleTextStyle: TextStyle(
              color: Colors.pink, fontWeight: FontWeight.bold, fontSize: 20.0),
          title: Text('Signout Confirmation'),
          content: SingleChildScrollView(
            child: Text('Are you sure?'),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            RaisedButton(
              child: Text(
                'Signout',
                style: TextStyle(color: Colors.white),
              ),
              splashColor: Colors.pinkAccent,
              onPressed: () async {
                Navigator.of(context).pop();
                await channel.shutdown();
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }
}

class PopUpConstants {
  static const String About = "About";
  static const String Signout = "Signout";
  static const List<String> choices = <String>[About, Signout];
}
