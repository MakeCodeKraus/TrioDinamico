import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:triodinamico/app/components/food_card.dart';

class TabsPage extends StatefulWidget {
  TabsPage({Key key}) : super(key: key);

  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('hello'),
      // bottomNavigationBar: _bottomNavigationBar(context),
    );
  }
}

Widget _bottomNavigationBar(BuildContext context) {
  return BottomNavigationBar(items: <BottomNavigationBarItem>[
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'no se'),
    BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Cart'),
    BottomNavigationBarItem(icon: Icon(Icons.person_pin), label: 'Account')
  ]);
}
