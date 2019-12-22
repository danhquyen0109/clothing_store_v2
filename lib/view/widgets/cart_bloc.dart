import 'package:flutter/material.dart';
import 'package:store_v2/view/pages/product/product.dart';

class CartBloc with ChangeNotifier {
  Map<String, int> _cart = {};
  Map<String, int> get cart => _cart;

  void addToCart(Product product) {
    if (_cart.containsKey(product.name)) {
      _cart[product.name] += 1;
    } else {
      _cart[product.name] = 1;
    }
    notifyListeners();
  }

  void clearAll() {
    _cart.clear();
  }

  void clear(Product product) {
    if (_cart.containsKey(product.name)) {
      if (_cart[product.name] == 1) {
        _cart.remove(product.name);
      } else {
        _cart[product.name] -= 1;
      }
    }
    notifyListeners();
  }
}
