import 'package:coffee_shop_app/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {
  final List<Coffee> _shop = [
    Coffee(
        name: 'Black Coffee',
        price: "R35.00",
        imagePath: 'lib/images/blackcoffee.png'),
    Coffee(
        name: 'Caffellate', price: "R34.00", imagePath: 'lib/images/latte.png'),
    Coffee(
        name: 'Espresso',
        price: "R36.00",
        imagePath: 'lib/images/Espresso.png'),
    Coffee(
        name: 'Cappuccino',
        price: 'R37.00',
        imagePath: 'lib/images/cappuccino.png'),
  ];
  //coffee for sale
  List<Coffee> _userCard = [];
  //user card
  List<Coffee> get coffeeShop => _shop;

  //get coffee list

  //get user card
  List<Coffee> get userCard => _userCard;
  //add item to card
  void addItemToCard(Coffee coffee) {
    _userCard.add(coffee);
    notifyListeners();
  }

  //remove item to card
  void removeItemFromCard(Coffee coffee) {
    _userCard.remove(coffee);
    notifyListeners();
  }
}
