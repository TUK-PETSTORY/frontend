import 'package:flutter/material.dart';
import 'comunity/childBoast.dart';
import 'comunity/pet_connection.dart';
import 'comunity/childcare_tips.dart';
  
final List<Tab> tabs = <Tab>[
  Tab(child: Text('자식자랑', style: TextStyle(fontFamily: 'MainFont'))),
  Tab(child: Text('육아꿀팁', style: TextStyle(fontFamily: 'MainFont'))),
  Tab(child: Text('입양', style: TextStyle(fontFamily: 'MainFont'))),
];

final List<Widget> tabItems = [
  Childboast(),
  ChildcareTips(),
  PetConnection(),
];

class Comunitymain extends StatelessWidget {
  const Comunitymain({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text('Pet Story', style: TextStyle(fontFamily: 'MainFont')),
          bottom: TabBar(
            tabs: tabs,
            indicatorColor: Color(0xffFF4081),
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            overlayColor: MaterialStatePropertyAll(
              Color(0xffFFEEEE),
            ),
          ),
        ),
        body: TabBarView(
          children: tabItems,
        ),
      ),
    );
  }
}
