import 'package:flutter/material.dart';
import 'package:mybday_app/home_page.dart';

//# Curso de Flutter #23 - Stack
//#https://www.youtube.com/watch?v=u8Mn_hQ6gy0

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                  child: Image.asset('assets/images/logo.png'),
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (text) {
                    email = text;
                  },
                ),
                SizedBox(height: 10),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (text) {
                    password = text;
                  },
                ),
                SizedBox(height: 10),
                RaisedButton(
                  onPressed: () {
                    if (email == '123' && password == '123') {
                      Navigator.of(context).pushReplacementNamed('/home');
                    } else {
                      print("login invalido");
                    }
                  },
                  child: Text('Entrar'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
