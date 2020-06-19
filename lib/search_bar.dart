import 'package:flutter/material.dart';

class PopUpConstants {
  static const String Profile = "Profile";
  static const String Settings = "Settings";
  static const String Signout = "Signout";

  static const List<String> choices = <String>[Profile, Settings, Signout];
}

class DefaultAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(56.0);

  @override
  _DefaultAppBarState createState() => _DefaultAppBarState();
}

class _DefaultAppBarState extends State<DefaultAppBar>
    with SingleTickerProviderStateMixin {
  double rippleStartX, rippleStartY;
  AnimationController _controller;
  Animation _animation;
  bool isInSearchMode = false;

  @override
  initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 5));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    _controller.addStatusListener(animationStatusListener);
  }

  animationStatusListener(AnimationStatus animationStatus) {
    if (animationStatus == AnimationStatus.completed) {
      setState(() {
        isInSearchMode = true;
      });
    }
  }

  void onSearchTapUp(TapUpDetails details) {
    setState(() {
      rippleStartX = details.globalPosition.dx;
      rippleStartY = details.globalPosition.dy;
    });

    print("pointer location $rippleStartX, $rippleStartY");
    _controller.forward();
  }

  cancelSearch() {
    setState(() {
      isInSearchMode = false;
    });

    onSearchQueryChange('');
    _controller.reverse();
  }

  onSearchQueryChange(String query) {
    print('search $query');
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Stack(children: [
      AppBar(
        title: Text("Chatter Box"),
        actions: <Widget>[
          GestureDetector(
            child: IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            onTapUp: onSearchTapUp,
          ),
          PopupMenuButton<String>(
            onSelected: popUpChoiceAction,
            itemBuilder: (BuildContext context) {
              return PopUpConstants.choices.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          )
        ],
      ),
      AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return CustomPaint(
            painter: MyPainter(
              containerHeight: widget.preferredSize.height,
              center: Offset(rippleStartX ?? 0, rippleStartY ?? 0),
              radius: _animation.value * screenWidth,
              context: context,
            ),
          );
        },
      ),
      isInSearchMode
          ? (SearchBar(
              onCancelSearch: cancelSearch,
              onSearchQueryChanged: onSearchQueryChange,
            ))
          : (Container())
    ]);
  }

  void popUpChoiceAction(String choice) {
    print("Working");
  }
}

//SearchBar
class SearchBar extends StatefulWidget implements PreferredSizeWidget {
  SearchBar({
    Key key,
    @required this.onCancelSearch,
    @required this.onSearchQueryChanged,
  }) : super(key: key);

  final VoidCallback onCancelSearch;
  final Function(String) onSearchQueryChanged;

  @override
  Size get preferredSize => Size.fromHeight(56.0);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar>
    with SingleTickerProviderStateMixin {
  String searchQuery = '';
  TextEditingController _searchFieldController = TextEditingController();

  clearSearchQuery() {
    _searchFieldController.clear();
    widget.onSearchQueryChanged('');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: widget.onCancelSearch,
                ),
                Expanded(
                  child: TextField(
                    controller: _searchFieldController,
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search, color: Colors.white),
                      hintText: "Search...",
                      hintStyle: TextStyle(color: Colors.black12),
                      suffixIcon: InkWell(
                        child: Icon(Icons.close, color: Colors.white),
                        onTap: clearSearchQuery,
                      ),
                    ),
                    onChanged: widget.onSearchQueryChanged,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//Painter Class
class MyPainter extends CustomPainter {
  final Offset center;
  final double radius, containerHeight;
  final BuildContext context;

  Color color;
  double statusBarHeight, screenWidth;

  MyPainter({this.context, this.containerHeight, this.center, this.radius}) {
    color = Colors.lightBlue;
    statusBarHeight = MediaQuery.of(context).padding.top;
    screenWidth = MediaQuery.of(context).size.width;
  }

  @override
  void paint(Canvas canvas, Size size) {
    Paint circlePainter = Paint();

    circlePainter.color = color;
    canvas.clipRect(
        Rect.fromLTWH(0, 0, screenWidth, containerHeight + statusBarHeight));
    canvas.drawCircle(center, radius, circlePainter);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
