import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:selling_app/src/widget/bottom_bar.dart';
import 'package:selling_app/src/widget/my_cards.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        leading: Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: InkResponse(
              onTap: () => print('menu'),
              child: Icon(
                Icons.more_horiz,
                size: 30.0,
                color: Colors.white,
              )),
        ),
        centerTitle: true,
        title: Text(
          "JCesar",
          textAlign: TextAlign.center,
        ),
      ),
      resizeToAvoidBottomInset: true,
      body: ListView(padding: EdgeInsets.only(left: 20.0), children: <Widget>[
        TabBar(
          controller: _tabController,
          indicatorColor: Colors.transparent,
          labelColor: Colors.blueAccent,
          isScrollable: true,
          labelPadding: EdgeInsets.only(right: 30.0),
          unselectedLabelColor: Colors.black45,
          tabs: [
            Tab(
              child: Text(
                'Computadores',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
            Tab(
              child: Text(
                'Acessórios',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
            Tab(
              child: Text(
                'Periféricos',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
            Tab(
              child: Text(
                'Armazenamento',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
            Tab(
              child: Text(
                'Smartphone',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
        MyCards(),
        MyCards(),
        MyCards(),
        MyCards(),
        MyCards(),
      ]),
      floatingActionButton: FloatingActionButton(
        elevation: 10.0,
        onPressed: () {},
        backgroundColor: Colors.blueAccent,
        child: Icon(Icons.shopping_cart),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
