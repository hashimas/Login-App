import 'package:flutter/material.dart';
import 'package:app/main.dart';
import 'package:app/signin.dart';

class Signup extends  StatefulWidget{
  _Home createState() => new _Home();
}

class _Home extends State<Signup>{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: new Scaffold(body: new Form(autovalidate: true,child:

    new ListView(padding: new EdgeInsets.all(24.0),children: <Widget>[
      new Padding(padding: new EdgeInsets.only(top: 12.0)),
      new Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,children: <Widget>[
        new Image.asset('images/sams.png',width: 150.0,height: 150.0,),
        new Text('SAMS',textAlign: TextAlign.center,style: new TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold,fontStyle: FontStyle.normal),),
      ],),
      new TextFormField(autovalidate: true,decoration: new InputDecoration(icon: new Icon(Icons.email),labelText: 'Email Address'),keyboardType: TextInputType.emailAddress,),
      new TextFormField(decoration: new InputDecoration(icon: new Icon(Icons.person),labelText: 'Username'),keyboardType: TextInputType.text,),
      new TextFormField(decoration: new InputDecoration(icon: new Icon(Icons.enhanced_encryption),labelText: 'Password'),keyboardType: TextInputType.text,),
      new Padding(padding: new EdgeInsets.only(top: 12.0 ,bottom: 12.0)),
      new RaisedButton(onPressed: (){},child: new Text('CREATE ACCOUNT'),color: Colors.blueAccent,textColor: Colors.white,shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),),
      new Padding(padding: new EdgeInsets.only(top: 12.0 ,bottom: 12.0)),
      new Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: <Widget>[
        new FlatButton(onPressed: (){Navigator.push(context, new  MaterialPageRoute(builder: (covariant) => new Login()));}, child: new Text('FAQ',textAlign: TextAlign.center,)
        ),
        new FlatButton(onPressed: (){Navigator.push(context, new  MaterialPageRoute(builder: (covariant) => new Login()));}, child: new Text('Terms & Condition',textAlign: TextAlign.center,)
        ),
      ],),


    ],),),),);
  }

}