// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();

  var _emailText = '';
  var _passText = '';

  @override
  void dispose() {
    _emailTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login Page'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                TextField(
                  controller: _emailTextController,
                  keyboardType: TextInputType.emailAddress,
                  // onSubmitted: (_) => _submitNumber(),
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(),
                    hintText: "Email",
                    labelText: "Input",
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: _passwordTextController,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  // onSubmitted: (_) => _submitNumber(),
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(),
                    hintText: "Password",
                    labelText: "Input",
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          _emailText = _emailTextController.text;
                          _passText = _passwordTextController.text;
                        });
                      },
                      color: Colors.blue,
                      child: Text(
                        'Submit',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 20),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          _emailTextController.text = '';
                          _passwordTextController.text = '';
                          _emailText = '';
                          _passText = '';
                        });
                      },
                      color: Colors.blue,
                      child: Text(
                        'Clear',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Text(
                  'Output',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Container(
                  height: 150,
                  width: 450,
                  color: Colors.red,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email: $_emailText',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Password: $_passText',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
