import 'dart:math';

import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InstagramPage(),
      theme: ThemeData(
        bottomNavigationBarTheme: _bottomNavigationBarTheme(),
        appBarTheme: _appBarTheme(),
        backgroundColor: Colors.black87,
        scaffoldBackgroundColor: Colors.black87,
      ),
    );
  }

  BottomNavigationBarThemeData _bottomNavigationBarTheme() {
    return BottomNavigationBarThemeData(
      backgroundColor: Colors.black87,
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.white30,
    );
  }

  AppBarTheme _appBarTheme() {
    return const AppBarTheme(
      backgroundColor: Colors.black87,
    );
  }
}

class InstagramPage extends StatefulWidget {
  const InstagramPage({Key? key}) : super(key: key);

  @override
  _InstagramPageState createState() => _InstagramPageState();
}

class _InstagramPageState extends State<InstagramPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Scaffold(
          appBar: _appBar(),
          bottomNavigationBar: _bottomNavigationBar(),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: _body(),
          ),
        ),
        /*   Opacity(
          opacity: 0.0,
          child: Image.asset(
            "images/instagram.jpeg",
          ),
        ), */
      ],
    );
  }

  BottomNavigationBar _bottomNavigationBar() => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.house_rounded), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_settings_sharp), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.shop_2_sharp), label: ""),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 15,
                child: FittedBox(
                  child: FlutterLogo(),
                ),
              ),
              label: ""),
        ],
      );

  AppBar _appBar() => AppBar(
        title: Text("is_not_a_develper"),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.add_box_outlined,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.menu,
            ),
          ),
        ],
      );

  Widget _body() {
    return ListView(
      children: [
        infoProfile(),
        SizedBox(height: 20),
        SizedBox(
          height: 100,
          width: MediaQuery.of(context).size.width,
          child: listStories(),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: DefaultTabController(
            length: 4,
            child: Column(
              children: [
                TabBar(
                  labelColor: Colors.white,
                  indicatorColor: Colors.white,
                  tabs: [
                    Tab(icon: Icon(Icons.grid_on_sharp)),
                    Tab(icon: Icon(Icons.video_settings)),
                    Tab(icon: Icon(Icons.play_arrow)),
                    Tab(icon: Icon(Icons.switch_account)),
                  ],
                ),
                groupStories(),
                groupStories(),
                groupStories(),
                groupStories(),
                groupStories(),
                groupStories(),
                groupStories(),
                groupStories(),
                groupStories(),
                groupStories(),
                groupStories(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Color get randomColor {
    int randomNumber = Random().nextInt(5);
    if (randomNumber == 0) return Colors.red;
    if (randomNumber == 1) return Colors.white;
    if (randomNumber == 2) return Colors.deepOrange;
    if (randomNumber == 3) return Colors.cyan;
    if (randomNumber == 4) return Colors.green;
    if (randomNumber == 5) return Colors.greenAccent;
    if (randomNumber == 6) return Colors.grey;
    if (randomNumber == 7) return Colors.blue;
    if (randomNumber == 8) return Colors.pink;
    if (randomNumber == 9) return Colors.purple;
    return Colors.primaries.first;
  }

  Widget groupStories() {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Row(
        children: [
          Expanded(
              flex: 32,
              child: Container(height: 120, width: 120, color: randomColor)),
          Spacer(),
          Expanded(
            flex: 32,
            child: Container(height: 120, width: 120, color: randomColor),
          ),
          Spacer(),
          Expanded(
              flex: 32,
              child: Container(height: 120, width: 120, color: randomColor)),
        ],
      ),
    );
  }

  Widget infoProfile() {
    return Column(
      children: [
        SizedBox(height: 5),
        statisticsProfile(),
        SizedBox(height: 10),
        nameAndInfoProfile(),
        SizedBox(height: 10),
        buttonInfoProfile(),
      ],
    );
  }

  Widget statisticsProfile() {
    return FractionallySizedBox(
      widthFactor: 0.95,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          imageProfile(),
          postsProfile(),
          followerProfile(),
          seguitiProfile(),
        ],
      ),
    );
  }

  Column seguitiProfile() => Column(
        children: [
          Text(
            "3.231",
            style: statisticsTextStyle(),
          ),
          Text(
            "Seguiti",
            style: statisticsTextStyle(),
          ),
        ],
      );

  Column followerProfile() => Column(
        children: [
          Text(
            "978",
            style: statisticsTextStyle(),
          ),
          Text(
            "Follower",
            style: statisticsTextStyle(),
          ),
        ],
      );

  Column postsProfile() => Column(
        children: [
          Text(
            "100",
            style: statisticsTextStyle(),
          ),
          Text(
            "Post",
            style: statisticsTextStyle(),
          ),
        ],
      );

  Widget nameAndInfoProfile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text("developer's home", style: nameAndInfosTextStyle()),
        Text("creator digitale", style: nameAndInfosTextStyle_grey()),
        Text("programmazione", style: nameAndInfosTextStyle()),
        Text("www.google.com", style: nameAndInfosTextStyle_link()),
      ],
    );
  }

  Widget buttonInfoProfile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buttonWidget("Button 1"),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 32,
              child: _buttonWidget("Button 2"),
            ),
            Spacer(),
            Expanded(flex: 32, child: _buttonWidget("Button 3")),
            Spacer(),
            Expanded(flex: 32, child: _buttonWidget("Button 4")),
          ],
        )
      ],
    );
  }

  Widget _buttonWidget(String text) {
    return SizedBox(
      height: 30,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: FractionallySizedBox(
          heightFactor: 0.7,
          child: FittedBox(
            child: Text(
              text,
              style: statisticsTextStyle(),
            ),
          ),
        ),
      ),
    );
  }

  Widget listStories() {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        WidgetStories(text: "Dev.Quiz.()", child: FlutterLogo()),
        SizedBox(width: 15),
        WidgetAddStories(),
      ],
    );
  }

  Widget WidgetAddStories() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            shape: BoxShape.circle,
          ),
          child: CircleAvatar(
              backgroundColor: Colors.black87,
              radius: 28,
              child: Icon(Icons.add)),
        ),
        SizedBox(height: 5),
        Text(
          "Nuova",
          style: nameAndInfosTextStyle(),
        )
      ],
    );
  }

  Column WidgetStories({required String text, required Widget child}) {
    return Column(
      children: [
        CircleAvatar(radius: 28, child: child),
        SizedBox(height: 5),
        Text(
          text,
          style: nameAndInfosTextStyle(),
        )
      ],
    );
  }

  Widget imageProfile() {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: 38,
      child: FlutterLogo(),
    );
  }

  TextStyle statisticsTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: 16,
    );
  }

  TextStyle nameAndInfosTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: 12,
    );
  }

  TextStyle nameAndInfosTextStyle_grey() {
    return TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.w600,
      fontSize: 12,
    );
  }

  TextStyle nameAndInfosTextStyle_link() {
    return TextStyle(
      color: Colors.white38,
      fontWeight: FontWeight.w600,
      fontSize: 12,
    );
  }
}
