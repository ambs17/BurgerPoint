import 'package:flutter/material.dart';
import 'package:hamburger_flutter/blocs/IconsBloc.dart';
import 'package:hamburger_flutter/blocs/CartBloc.dart';
import 'Menu.dart';
import 'Cart.dart';
import 'Settings.dart';
import 'Recent.dart';

class Home extends StatefulWidget {
  _Home createState() => new _Home();
}

class _Home extends State<Home> {
  IconsBloc _iconsBloc = new IconsBloc();
  CartBloc _cartBloc = new CartBloc();
  int _selectedIndex = 0;

  final _widgetOptions = [
    new Menu(),
    new fav(),
    new Cart(),
    new SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("BURGER'S POINT",
            style: TextStyle(color: Theme.of(context).accentColor,fontSize: 28,fontWeight: FontWeight.bold)),
            backgroundColor: Colors.amber,
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: new Theme(data: Theme.of(context).copyWith(canvasColor: Colors.black,
          textTheme: Theme.of(context).textTheme.copyWith(caption: new TextStyle(color: Theme.of(context).indicatorColor))),
          child: new BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.menu,color: Colors.white,), title: Text('Menu')),
              BottomNavigationBarItem(
                  icon: new Stack(children: <Widget>[
                    new Icon(Icons.restart_alt,color: Colors.white),
                    new StreamBuilder(
                        stream: _iconsBloc.favoritesNotification,
                        initialData: false,
                        builder: (context, AsyncSnapshot snapshot) {
                          if (!snapshot.data)
                            return Container(height: 0, width: 0);
                          return _badge();
                        })
                  ]),
                  title: Text('Recents')),
              BottomNavigationBarItem(
                  icon: new Stack(children: <Widget>[
                    new Icon(Icons.shopping_cart,color: Colors.white),
                    new StreamBuilder(
                        stream: _iconsBloc.cartNotification,
                        initialData: false,
                        builder: (context, AsyncSnapshot snapshot) {
                          if (!snapshot.data)
                            return Container(height: 0, width: 0);
                          return _badge();
                        })
                  ]),
                  title: new Text("Cart")),
              BottomNavigationBarItem(
                  icon: new Stack(children: <Widget>[
                    new Icon(Icons.settings,color: Colors.white),
                    new StreamBuilder(
                        stream: _iconsBloc.profileNotification,
                        initialData: false,
                        builder: (context, AsyncSnapshot snapshot) {
                          if (!snapshot.data)
                            return Container(height: 0, width: 0);
                          return _badge();
                        })
                  ]),
                  title: Text('Settings')),
            ],
            currentIndex: _selectedIndex,
            fixedColor: Theme.of(context).primaryColor,
            onTap: _onItemTapped,
            type: BottomNavigationBarType.fixed,
          )),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _badge() {
    return new Positioned(
        top: 0.0,
        right: 0.0,
        child: new Icon(Icons.brightness_1, size: 8.0, color: Colors.amber));
  }

  @override
  void dispose() {
    _iconsBloc.dispose();
    _cartBloc.dispose();
    super.dispose();
  }
}
