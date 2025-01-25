import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_proj/model/Cart.dart';
import 'package:provider_proj/model/list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int itemCount = 0;
  List<items> item = [
    items(name: 'Item 1', price: 100),
    items(name: 'Item 2', price: 200),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cart');
                },
                icon: Icon(Icons.shopping_cart),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Consumer<Cart>(
                  builder: (context, cart, child) {
                    return Text("${cart.totalPrice}");
                  },
                ),
              )
            ],
          )
        ],
      ),
      body: ListView.builder(
        itemCount: item.length,
        itemBuilder: (context, i) {
          return Card(
            child: Consumer<Cart>(
              builder: (context, cart, child) {
                return ListTile(
                  title: Text("${item[i].name}"),
                  trailing: IconButton(
                    onPressed: () {
                      cart.add(item[i]);
                    },
                    icon: Icon(Icons.add_shopping_cart),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
