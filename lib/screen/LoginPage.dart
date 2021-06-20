import 'package:flutter/material.dart';
import 'package:sush_bank/home/HomePage.dart';

class LoginPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: new Text("Login Page"),
      ),
      body: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Image.asset(
                'images/banklogo.png',
                width: 500,
                height: 300,
                fit: BoxFit.fill,
              ),

              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Sign in to continue !',
                    style: TextStyle(fontSize: 20),
                  )),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Account Number',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Mpin',
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  //forgot password screen
                },
                textColor: Colors.blue,
                child: Text('Forgot Password'),
              ),
              Container(
                  height: 50,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text('Login'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new HomePage()));
                      print(nameController.text);
                      print(passwordController.text);
                    },
                  )),
              Container(
                  child: Row(
                children: <Widget>[
                  Text('Does not have account?'),
                  FlatButton(
                    textColor: Colors.red,
                    child: Text(
                      'Sign in',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new HomePage()));
                      //signup screen
                    },
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ))
            ],
          )),
    );
  }
}
