import 'package:flutter/material.dart';
import 'package:ola_mundo/homepage.dart';

class LoginPage extends StatefulWidget {
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 150,
                        height: 150,
                        child: Image.asset("assets/images/logo.png")),
                    Container(height: 20),
                    TextField(
                      onChanged: (text) {
                        email = text;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'E-mail',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      onChanged: (text) {
                        password = text;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 15),
                    RaisedButton(
                      onPressed: () {
                        if (email == 'thalesapsc@gmail.com' &&
                            password == '123') {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        } else {
                          print('Login invalido');
                        }
                      },
                      child: Text('Entrar'),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
