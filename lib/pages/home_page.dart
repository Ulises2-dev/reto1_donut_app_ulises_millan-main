import 'package:flutter/material.dart';

import '../utils/my_tab.dart';
import '../tap/burger_tab.dart';
import '../tap/donut_tab.dart';
import '../tap/pancake_tab.dart';
import '../tap/pizza_tab.dart';
import '../tap/smoothie_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    //donut table
    const MyTab(iconPath: 'lib/icons/donut.png'),
    //burguer table
    const MyTab(iconPath: 'lib/icons/burger.png'),
    //smoothie table
    const MyTab(iconPath: 'lib/icons/smoothie.png'),
    //pancake table
    const MyTab(iconPath: 'lib/icons/pancakes.png'),
    //pizza table
    const MyTab(iconPath: 'lib/icons/pizza.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(icon: Icon(Icons.menu, color: Colors.grey[800], size: 36), onPressed: () { print('Botón de menú'); },),
          ),
          actions: [Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: IconButton(icon: Icon(Icons.person, color: Colors.grey[800], size: 36), onPressed: () { print('Yeah pomel'); },),
          )],
        ),
        body: Column(children: [
          //Texto "I want to eat"
          const Padding(
            padding: EdgeInsets.all(24.0),
            child: Row(
              children: [
                Text('I want to ', style: TextStyle(fontSize: 32),),
                Text('EAT', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),),
              ],
            ),
          ),
          //Tap bar
          TabBar(tabs: myTabs),
          //Tap bar view
          Expanded(child: TabBarView(children: [
            //Donut tab
            DonutTab(),
            //Burger tab
            BurgerTab(),
            //Smoothie tab
            SmoothieTab(),
            //Pancake tab
            PancakeTab(),
            //Pizza tab
            PizzaTab(),
          ]),)
          //Carrito
        ],),
      ),
    );
  }
}