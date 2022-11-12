import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:hamburger_flutter/models/Cart.dart' as CartEntity;
import 'package:hamburger_flutter/blocs/CartBloc.dart';
import 'package:hamburger_flutter/blocs/IconsBloc.dart';
import 'package:hamburger_flutter/components/CartItemList.dart';
import 'package:hamburger_flutter/components/RecentList.dart';
import 'package:hamburger_flutter/components/RecentList.dart';
class fav extends StatefulWidget {
  _fav createState() => new _fav();
}

class _fav extends State<fav> {

  IconsBloc _iconsBloc = new IconsBloc();
  CartBloc _cartBloc = new CartBloc();

  initState(){
    _iconsBloc.notifyCartIcon(false);
    super.initState();
  }

  Widget build(BuildContext context){
    return new Scaffold(floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor, child: new Icon(Icons.check), onPressed: (){}),
        body: new Padding(padding: EdgeInsets.all(20), child:
        new StreamBuilder(initialData: _cartBloc.cart, stream: _cartBloc.getCart, builder: (context, AsyncSnapshot<CartEntity.Cart> snapshot){
          if(snapshot.data==null || snapshot.data.totalPrice == 0) return _emptyCart();

          else{

            return new Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
              new Text("Recent Orders", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              new Expanded(child:
              new Container(margin: EdgeInsets.only(top: 20), child:
              new ListView.builder(itemCount: snapshot.data.orders.length, itemBuilder: (context, position) {
                final order = snapshot.data.orders[position];
                return Dismissible(key: Key(order.id.toString()), child:
                new RecentList(order: order),
                  onDismissed: (direction){
                    _cartBloc.removeOrderToCart(order);
                  },
                  background: Container(color: Colors.redAccent),
                );
              })
              )
              )
            ]);

          }

        })
        )
    );
  }

  Widget _emptyCart(){
    return new Center(child: new Text("No Recent Orders Yet"));
  }

}