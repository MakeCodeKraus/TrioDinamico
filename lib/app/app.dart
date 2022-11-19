import 'package:flutter/material.dart';
import 'package:triodinamico/app/tabs/account/account.dart';
import 'package:triodinamico/app/tabs/cart/cart.dart';
import 'package:triodinamico/app/tabs/home/home.dart';
import 'package:triodinamico/app/tabs/menu/menu.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: TabBarView(
          children: <Widget>[
            Home(),
            Menu(),
            Cart(),
            Account(),
          ],
        ),
        bottomNavigationBar: Material(
          color: Colors.white,
          child: TabBar(
            labelPadding: const EdgeInsets.only(bottom: 10),
            labelStyle: TextStyle(fontSize: 16.0),
            indicatorColor: Colors.transparent,
            labelColor: theme.primaryColor,
            unselectedLabelColor: Colors.black54,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.home, size: 28),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.menu_book, size: 28),
                text: 'Menu',
              ),
              Tab(
                icon: Icon(Icons.card_travel, size: 28),
                text: 'Cart',
              ),
              Tab(
                icon: Icon(Icons.person_outline, size: 28),
                text: 'Account',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
