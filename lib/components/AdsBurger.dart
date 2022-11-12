import 'package:flutter/material.dart';
import 'PriceTag.dart';

class AdsBurger extends StatelessWidget {


  Widget build(BuildContext context) {

    
    double  _imageSize = MediaQuery.of(context).size.width*0.5 - 18;
    double _contentSize = MediaQuery.of(context).size.width*0.4 - 15;
    String _url = "https://kitchenpops.files.wordpress.com/2015/12/veg-whopper-hr.jpg";

    return new Container(margin: EdgeInsets.only(left: 10, right: 10), child:
      
      new Row(children: <Widget>[
        new Container(width: _imageSize, height: _imageSize, child:
          new Stack(children: <Widget>[
            new ClipRRect(borderRadius: BorderRadius.all(Radius.circular(10)), child:
              new Image.network(_url, fit: BoxFit.cover, width: _imageSize, height: _imageSize)
              
            ),
            
            new Container(padding: EdgeInsets.all(20), child:
              new PriceTag(price: 219)
            ),
            new Align(alignment: Alignment.bottomLeft, child:
              new Container(padding: EdgeInsets.all(20), child:
                new Text("600g", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Theme.of(context).indicatorColor))
              )
            )
          ])
        ),
        new Container(margin: EdgeInsets.only(left: 20), width: _contentSize, child:
          new Column(children: <Widget>[
            
            new Text("Veg Double Patty Burger", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Theme.of(context).accentColor)),
            new Padding(padding: EdgeInsets.only(top: 15), child:
              new Text("Enjoy our new Veg Double Patty Burger with juicy tomatoes and with freshly cut lettuce with some spicy Jalapeñoes.", style: TextStyle(fontSize: 15))
            )
          ])
        )
      ])
    );
  }
}
