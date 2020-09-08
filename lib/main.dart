import 'package:flutter/material.dart';
import 'package:youtube/colors.dart';
import 'package:youtube/pages/pages1.dart';
import 'package:youtube/pages/pages2.dart';
import 'package:youtube/pages/pages3.dart';
import 'package:youtube/pages/pages4.dart';

void main() {
  runApp(TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            // backgroundColor: Color(0XFFFFFFFF),
            backgroundColor: PrimaryColor,
            bottom: TabBar(
              isScrollable: true,
              // indicatorColor: PrimaryColor,
              indicatorColor: WhiteColor,
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: WhiteColor,
              unselectedLabelColor: PrimaryColorHint,
              tabs: [
                Tab(text: 'Viewer'),
                Tab(text: 'Subscriber'),
                Tab(text: 'Jam Tayang'),
                Tab(text: 'Hemat'),
              ],
            ),
            title: Text(
              'Youtube Tools',
              style: TextStyle(color: WhiteColor),
            ),
            centerTitle: true,
          ),
          body: TabBarView(
            children: [
              Pageone(),
              Pagetwo(),
              Pagethree(),
              Pagefour(),
            ],
          ),
        ),
      ),
    );
  }
}
