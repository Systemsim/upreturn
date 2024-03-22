import 'package:flutter/material.dart';
import 'package:capston/pages/services.dart';
import 'package:capston/pages/signup.dart';

class Login extends StatelessWidget {
  const Login({Key? key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    final TextEditingController _usernameController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Container(
          constraints: BoxConstraints.expand(),
          color: Color(0xFFFFFFFF),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(bottom: 50),
                  width: double.infinity,
                  height: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Positioned(
                          top: 0,
                          right: 20,
                          width: 400,
                          height: 300,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(50),
                                bottomLeft: Radius.circular(50),
                              ),
                              color: Color(0xFF191d46),
                            ),
                            padding: EdgeInsets.only(
                                top: 60, bottom: 0, left: 200, right: 20),
                            margin: EdgeInsets.only(bottom: 10),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 15),
                                  transform: Matrix4.translationValues(40, 0, 0),
                                  child: Text(
                                    'Log in',
                                    style: TextStyle(
                                        color: Color(0xFFffffff),
                                        fontSize: 55,
                                        fontFamily: 'JockeyOne',
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        IntrinsicHeight(
                          child: Container(
                            margin: EdgeInsets.only(top:40, bottom: 30, left: 20, right: 20),
                            width: double.infinity,
                            child: Stack(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Form(
                                      key: _formKey,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          TextFormField(
                                            controller: _usernameController,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              labelText: 'Username',
                                            ),
                                            validator: (value) {
                                              if (value == null || value.isEmpty) {
                                                return 'Please enter your username';
                                              }
                                              return null;
                                            },
                                          ),
                                          SizedBox(height: 20),
                                          TextFormField(
                                            controller: _passwordController,
                                            obscureText: true,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              labelText: 'Password',
                                            ),
                                            validator: (value) {
                                              if (value == null || value.isEmpty) {
                                                return 'Please enter your password';
                                              }
                                              return null;
                                            },
                                          ),
                                          SizedBox(height: 20),
                                          Container(
                                            width: double.infinity,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  fixedSize: Size(150, 50),
                                                  backgroundColor: Colors.blue,
                                                  elevation: 20,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(7))),
                                              onPressed: () {
                                                if (_formKey.currentState!.validate()) {
                                                  // Validation passed, proceed with login
                                                  // You can add your login logic here
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) => Services(),
                                                    ),
                                                  );
                                                }
                                              },
                                              child: Text('Log In',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18
                                                )
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("Don't have an account?",
                                        style: TextStyle(
                                          fontSize: 18
                                        ),),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => Signup(),
                                              ),
                                            );
                                          },
                                          child: Text('Sign Up',
                                          style: TextStyle(
                                            fontSize: 18
                                          ),),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 0, left: 30, right: 20),
                          width: 320,
                          child: Image.asset('assets/images/login.jpg'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
