import 'package:flutter/material.dart';
import 'package:squareware/bottom_bar.dart';
import 'package:squareware/cookie_page.dart';
import 'package:squareware/stories.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Square Ware',
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Stories(),
          SizedBox(height: 15.0),
          Text('Categories',
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 15.0),
          TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Color(0xFFC88D67),
              isScrollable: true,
              labelPadding: EdgeInsets.only(right: 45.0),
              unselectedLabelColor: Color(0xFFCDCDCD),
              tabs: [
                Tab(
                  child: Text('All',
                      style: TextStyle(
                        fontSize: 21.0,
                      )),
                ),
                Tab(
                  child: Text('Vegan',
                      style: TextStyle(
                        fontSize: 21.0,
                      )),
                ),
                Tab(
                  child: Text('Keto',
                      style: TextStyle(
                        fontSize: 21.0,
                      )),
                )
              ]),
          Container(
              height: MediaQuery.of(context).size.height - 50.0,
              width: double.infinity,
              child: TabBarView(controller: _tabController, children: [
                CookiePage(),
                CookiePage(),
                CookiePage(),
              ]))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.lime,
        child: Icon(Icons.search),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
