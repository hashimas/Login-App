import 'package:flutter/material.dart';
import 'package:app/main.dart';
import 'package:app/signup.dart';

void main()=> runApp(new MaterialApp(home: new Welcome(),));

class Welcome  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(body: new Center(child: new ListView(padding: new EdgeInsets.all(24.0),children: <Widget>[
      new Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,children: <Widget>[
        new Padding(padding: new EdgeInsets.only(top: 12.0)),
        new Image.asset('images/sams.png',width: 150.0,height: 150.0,),
        new Text('SAMS',textAlign: TextAlign.center,style: new TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold,fontStyle: FontStyle.normal),),
        new  Padding(padding: new EdgeInsets.only(bottom: 24.0)),
        new Text('Workforce Management Solutions',textAlign: TextAlign.center,style: new TextStyle(fontSize: 20.0),),
        new Padding(padding: new EdgeInsets.only(bottom: 12.0)),
        new Text('SAMS - maximizing employees productivity and business profitability!',textAlign: TextAlign.center,style: new TextStyle(fontSize: 14.0),),
        new Padding(padding: new EdgeInsets.only(bottom: 24.0 )),
        new Row(mainAxisAlignment: MainAxisAlignment.center ,crossAxisAlignment:CrossAxisAlignment.center ,children: <Widget>[
          new RaisedButton(onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context) => new Signup()));},textColor: Colors.white ,color: Colors.blueAccent,child: new Text('SIGN UP') ,shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),),
          new Padding(padding: new EdgeInsets.all(24.0)),
          new RaisedButton(onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context) => Login()));},textColor: Colors.white ,color: Colors.blueAccent,child: new Text('LOG IN') ,shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),),
        ],),
      ],),
    ],),),);
  }
}