import 'package:hamburger_flutter/models/Burger.dart';

class SpecialOffersRepository {
  static List<Burger> _list = new List();

  void _fillList() {
    _list.add(new Burger(
        59,
        "Spicy Aaloo Tikki",
        "https://mcdonaldsblog.in/wp-content/uploads/2018/04/McAloo-tikki.jpg",
        new List(),
        new List()));
    _list.add(new Burger(
        169,
        "Spicy Paneer Burger",
        "https://mcdonaldsblog.in/wp-content/uploads/2016/06/mcspicy-paneer-1.jpg",
        new List(),
        new List()));
        
        _list.add(new Burger(
        219,
        "Veg Double Patty",
        "https://kitchenpops.files.wordpress.com/2015/12/veg-whopper-hr.jpg",
        new List(),
        new List()));
        
    _list.add(new Burger(
        129,
        "X Cheedar",
        "https://i2.wp.com/www.bagagemdememorias.com/wp-content/uploads/2017/03/meal-fries-hamburger.jpg?fit=800%2C533&ssl=1",
        new List(),
        new List()));
    _list.add(new Burger(
        210,
        "Monster Chill",
        "https://cdn.shopify.com/s/files/1/0128/7942/9722/products/premium-chilli-burger-mix-500g-10629-p_600x.jpg?v=1581611256 ",
        new List(),
        new List()));
    _list.add(new Burger(
        129,
        "Traditional",
        "https://blog.grandchef.com.br/wp-content/uploads/2018/08/hamburgueria.jpg",
        new List(),
        new List()));
    _list.add(new Burger(
        99,
        "Chicken Masala",
        "https://editorial.designtaxi.com/editorial-images/news-burgers27022019/2.jpg",
        new List(),
        new List()));
  }

  Future<List<Burger>> fetchSpecialOffers() {
    //simulate cache network request
    if (_list.isNotEmpty)
      return Future.delayed(Duration(seconds: 0), () {
        _list.clear();
        _fillList();
        return _list;
      });

    return Future.delayed(Duration(seconds: 3), () {
      _fillList();
      return _list;
    });
  }
}
