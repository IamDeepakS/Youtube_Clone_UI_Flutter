import 'package:flutter/material.dart';

import 'home_components/home.dart';

class YoutubeHome extends StatefulWidget {
  @override
  _YoutubeHomeState createState() => _YoutubeHomeState();
}

class _YoutubeHomeState extends State<YoutubeHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF282828),
        actions: [
          Container(
            width: MediaQuery.of(context).size.width - 200,
            child: Row(
              children: [
                Container(
                  width: 35,
                  child: Image(
                    image: AssetImage("assets/youtube_logo.png"),
                  ),
                ),
                Text(
                  "YouTube",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12),
            width: MediaQuery.of(context).size.width - 170,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.cast),
                Icon(Icons.video_call),
                Icon(Icons.search),
                Container(
                  height: 30,
                  width: 30,
                  child: CircleAvatar(
                    child: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    backgroundColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Home(),
          Container(color: Colors.yellow),
          Container(color: Colors.green),
          Container(color: Colors.blue),
          Container(color: Colors.purple),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Color(0xFF282828)),
        height: 50,
        child: TabBar(
          tabs: [
            Tab(child: Icon(Icons.home_outlined)),
            Tab(child: Icon(Icons.explore_outlined)),
            Tab(child: Icon(Icons.add_circle_outline, size: 40)),
            Tab(child: Icon(Icons.subscriptions_outlined)),
            Tab(child: Icon(Icons.video_library_outlined)),
          ],
          controller: _tabController,
          indicatorColor: Colors.transparent,
        ),
      ),
    );
  }
}
