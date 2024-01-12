import 'package:flutter/material.dart';

import '../screens/callscreen.dart';
import '../screens/messagescreen.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
    child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: const Text('Teleapp'),
        bottom: TabBar(tabs: [
          Tab(icon: Icon(Icons.call),text: 'Calls',),
          Tab(icon: Icon(Icons.message),text: 'Message',),
          Tab(icon: Icon(Icons.settings),text: 'Settings',)
        ],
        indicatorColor: Colors.black,),
      ),
      body: TabBarView(children: [
        CallScreen(),
        TextScreen(),
      ],
      ),
      
      ),
    );
  }
}