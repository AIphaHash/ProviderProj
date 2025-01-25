import 'package:flutter/material.dart';
import 'package:provider_proj/model/list.dart';

class Cart with ChangeNotifier {
  List<items> _item = [];
  double _price = 0.0;
  void add(items items) {
    _item.add(items);
    _price += items.price;
    notifyListeners();
  }

  int get count {
    return _item.length;
  }

  double get totalPrice {
    return _price;
  }
}
