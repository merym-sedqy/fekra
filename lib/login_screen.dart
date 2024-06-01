
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),

      body: Center(
        child: Padding(padding: 
        const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Username'),
            ),
            SizedBox(
              height: 20,
            ),

            TextField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true, //This property hides the entered text, displaying it as dots
            ),

            SizedBox(height: 20),

            ElevatedButton(onPressed: () {}, child: Text('Login'),)
          ],
        ),
        ),
      ),
    );
  }
}
 