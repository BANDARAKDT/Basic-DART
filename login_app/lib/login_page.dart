import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'database_helper.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

Future<void> _login() async {
  try {
    final response = await http.post(
      Uri.parse('https://api.ezuite.com/api/External_Api/Mobile_Api/Invoke'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        "API_Body": [
          {
            "Unique_Id": "",
            "Pw": _passwordController.text
          }
        ],
        "Api_Action": "GetUserData",
        "Company_Code": _usernameController.text
      }),
    );

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      if (data['Status_Code'] == 200) {
        // Save user data to SQLite
        await _saveUserData(data['Response_Body'][0]);
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Login Successful')));
      } else {
        // Handle other status codes or messages
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data['Message'] ?? 'Login Failed')));
      }
    } else {
      // Handle HTTP errors
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('HTTP Error: ${response.statusCode}')));
    }
  } catch (e) {
    // Log the error for more details
    print('Error during login: $e');
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Login Error: $e')));
  }
}

  Future<void> _saveUserData(Map<String, dynamic> user) async {
    await DatabaseHelper.instance.insertUser(user);
  }
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.deepPurple.shade100, Colors.indigo.shade100],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: SingleChildScrollView(
              child: Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.lock, size: 80, color: Colors.deepPurple),
                      SizedBox(height: 20),
                      TextField(
                        controller: _usernameController,
                        decoration: InputDecoration(
                          labelText: 'Username',
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.7),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.7),
                        ),
                      ),
                      SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: _login,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple,
                          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Text('Login', style: TextStyle(fontSize: 18)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}