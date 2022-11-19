import 'package:flutter/material.dart';
import 'package:triodinamico/app/components/food_card.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> with TickerProviderStateMixin {
  TabController _tabController;
  bool switchValue = true;
  final List<Map<String, String>> favoriteFoods = [
    {
      'name': 'Salmon',
      'price': '40.50',
      'rate': '4.5',
      'clients': '168',
      'image': 'images/plate-002.png'
    },
    {
      'name': 'Rice and meat',
      'price': '130.00',
      'rate': '4.8',
      'clients': '150',
      'image': 'images/plate-003.png'
    },
    {
      'name': 'Tandoori Chicken',
      'price': '96.00',
      'rate': '4.9',
      'clients': '200',
      'image': 'images/plate-001.png'
    },
    {
      'name': 'Vegan food',
      'price': '400.00',
      'rate': '4.2',
      'clients': '150',
      'image': 'assets/images/plate-007.png'
    },
    {
      'name': 'Caparccio',
      'price': '35.00',
      'rate': '4.4',
      'clients': '170',
      'image': 'assets/images/plate-006.png'
    },
  ];

  @override
  void initState() {
    this._tabController = TabController(
      length: 2,
      initialIndex: 0,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Menu',
            style: TextStyle(color: Colors.black, fontSize: 18.0),
            textAlign: TextAlign.center,
          ),
          Expanded(
              child: TabBarView(
            controller: this._tabController,
            children: <Widget>[
              Container(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: ((size.width / 2) / 230),
                  children: this.favoriteFoods.map((product) {
                    return Container(
                      margin: const EdgeInsets.only(top: 10.0),
                      child: FoodCard(
                        width: size.width,
                        primaryColor: theme.primaryColor,
                        productName: product['name'],
                        productPrice: product['price'],
                        productUrl: product['image'],
                        productClients: product['clients'],
                        productRate: product['rate'],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
