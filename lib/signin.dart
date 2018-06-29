import 'package:flutter/material.dart';
import 'package:app/signup.dart';
class Login  extends StatefulWidget{
  @override
  _Home createState() => new _Home();

}
class _Home extends State<Login>{
  final usernameController = new TextEditingController();
  final passwordController = new TextEditingController();
  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext covariant){
    print('help me');
    return new MaterialApp(home: new Scaffold(body: new Form(autovalidate: true,child:

    new ListView(padding: new EdgeInsets.all(24.0),children: <Widget>[
      new Padding(padding: new EdgeInsets.only(top: 12.0)),
      new Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,children: <Widget>[
        new Image.asset('images/sams.png',width: 150.0,height: 150.0,),
        new Text('SAMS',textAlign: TextAlign.center,style: new TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold,fontStyle: FontStyle.normal),),
      ],),
      new TextFormField(controller: usernameController,decoration: new InputDecoration(icon: new Icon(Icons.person),labelText: 'Username'),keyboardType: TextInputType.text,),
      new TextFormField(controller: passwordController,decoration: new InputDecoration(icon: new Icon(Icons.enhanced_encryption),labelText: 'Password'),keyboardType: TextInputType.text,obscureText: true,),
      new Padding(padding: new EdgeInsets.only(top: 12.0 ,bottom: 12.0)),
      new RaisedButton(onPressed: (){print(usernameController.text);print(passwordController.text);},child: new Text('LOG IN'),color: Colors.blueAccent,textColor: Colors.white,shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),),
      new Padding(padding: new EdgeInsets.only(top: 12.0 ,bottom: 12.0)),
      new FlatButton(onPressed: (){Navigator.push(covariant, new  MaterialPageRoute(builder: (covariant) => new Signup()));}, child: new Text('Don\'t have an account? SIGN UP',textAlign: TextAlign.center,)
      ),

    ],),),),);
  }


}