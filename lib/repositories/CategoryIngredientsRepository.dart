import 'package:hamburger_flutter/models/Ingredient.dart';
import 'package:hamburger_flutter/models/CategoryIngredient.dart';

class CategoryIngredientsRepository {
  static List<CategoryIngredient> _list = new List();

  void _fillList() {
    _list.add(new CategoryIngredient(
        "Cheese",
        "https://www.healthyeating.org/images/default-source/home-0.0/nutrition-topics-2.0/milk-dairy/2-1-3-1dairyfoods_cheese_detailfeature.jpg?sfvrsn=a580dd8c_4",
        [
          new Ingredient(15, "Cheddar"),
          new Ingredient(20, "Feta"),
          new Ingredient(15, "Cheese Slice"),
          new Ingredient(20, "Grated Mozzarella"),
        ].toList()));
    _list.add(new CategoryIngredient(
        "Vegetable",
        "https://www.healthline.com/hlcmsresource/images/AN_images/fruits-and-vegetables-thumb.jpg",
        [
          new Ingredient(15, "Lettuce"),
          new Ingredient(15, "Cucumber"),
          new Ingredient(12, "Tomato"),
          new Ingredient(15, "Onion Rings"),
          new Ingredient(23, "Roasted Red Peppers"),
        ].toList()));
    _list.add(new CategoryIngredient(
        "Meat",
        "https://www.pngitem.com/pimgs/m/42-429407_kfc-fried-chicken-png-fried-chicken-wings-png.png",
        [
          new Ingredient(20, "Pepperoni"),
          new Ingredient(25, "Salami"),
          new Ingredient(32, "Juicy Mutton Pieces"),
          new Ingredient(18, "Chicken Strips"),
          new Ingredient(25, "Roasted Chicken"),
          new Ingredient(28, "Tandoori Chicken")
        ].toList()));
    _list.add(new CategoryIngredient(
        "Dips",
        "https://www.primaverakitchen.com/wp-content/uploads/2014/04/How-to-make-Basic-Tomato-Sauce-recipe-Primavera-Kitchen-5.jpg",
        [
          new Ingredient(18, "Chipotle Southwest"),
          new Ingredient(18, "Sweet Chilli"),
          new Ingredient(18, "Tandoor Sauce"),
          new Ingredient(18, "Simple Mayonnaise"),
        ].toList()));
    _list.add(new CategoryIngredient(
        "Sides",
        "https://www.agweek.com/incoming/4905021-ld2sih-234771922292882544_4a59fde281_o.jpg/alternates/BASE_LANDSCAPE/2347719%2B22292882544_4a59fde281_o.jpg",
        [
          new Ingredient(65, "Small Fries"),
          new Ingredient(75, "Medium Fries"),
          new Ingredient(90, "Large Fries"),
          new Ingredient(50, "Potato Shots"),
          new Ingredient(45, "Veggie Strips"),
          new Ingredient(40, "Cheese Coins"),
        ].toList()));
    _list.add(new CategoryIngredient(
        "Drinks",
        "https://static.toiimg.com/photo/85330198.cms",
        [
          new Ingredient(80, "Coke(350ml)"),
          new Ingredient(80, "Sprite(350ml)"),
          new Ingredient(80, "Fanta(350ml)"),
          new Ingredient(65, "Water(1L)"),
          new Ingredient(70, "Mojito(250ml)"),
        ].toList()));
    _list.add(new CategoryIngredient(
        "Coffee",
        "https://enjoyjava.com/wp-content/uploads/2018/01/How-to-make-strong-coffee.jpg",
        [
          new Ingredient(75, "Latte"),
          new Ingredient(80, "Mocha"),
          new Ingredient(95, "Cold Coffee"),
          new Ingredient(65, "Simple Black"),
        ].toList()));
  }

  Future<List<CategoryIngredient>> fetchCategories() {
    if (_list.isNotEmpty)
      return Future.delayed(Duration(seconds: 0), () {
        return _list;
      });

    return Future.delayed(Duration(seconds: 1), () {
      _fillList();
      return _list;
    });
  }
}
