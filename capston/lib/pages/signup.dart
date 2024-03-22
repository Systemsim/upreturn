import 'package:flutter/material.dart';
import 'package:capston/pages/login.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    final TextEditingController _firstNameController = TextEditingController();
    final TextEditingController _lastNameController = TextEditingController();
    final TextEditingController _emailController = TextEditingController();
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
                  padding: EdgeInsets.only(bottom: 52),
                  width: double.infinity,
                  height: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IntrinsicHeight(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(35),
                                bottomLeft: Radius.circular(35),
                              ),
                              color: Color(0xFF191d46),
                            ),
                            padding: EdgeInsets.only(
                                top: 50, bottom: 20, left: 220, right: 20),
                            margin: EdgeInsets.only(bottom: 40),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sign up',
                                  style: TextStyle(
                                    color: Color(0xFFffffff),
                                    fontSize: 55,
                                    fontFamily: 'JockeyOne',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Form(
                          key: _formKey,
                          child: Column(
                            children: [
                            SizedBox(width: 375,
                              child:
                              TextFormField(
                                controller: _firstNameController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'First Name',
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your first name';
                                  }
                                  return null;
                                },
                              ),
                            ),
                              SizedBox(height: 20),
                              SizedBox(width: 375,
                              child:
                              TextFormField(
                                controller: _lastNameController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Last Name',
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your last name';
                                  }
                                  return null;
                                },
                              ),
                              ),
                              SizedBox(height: 20),
                              SizedBox(width: 375,
                              child:
                              TextFormField(
                                controller: _emailController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'E-mail',
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your email';
                                  }
                                  // Add email validation logic here if needed
                                  return null;
                                },
                              ),
                              ),
                              SizedBox(height: 20),
                              SizedBox(width: 375,
                              child:
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
                              ),
                              SizedBox(height: 20),
                              SizedBox(width: 375,
                              child:
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
                                      // Validation passed, proceed with signup
                                      // You can add your signup logic here
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Login(),
                                        ),
                                      );
                                    }
                                  },
                                  child: Text('Sign up',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have an account?",
                              style: TextStyle(
                                  fontSize: 18
                              ),),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Login(),
                                  ),
                                );
                              },
                              child: Text('Log In',
                                style: TextStyle(
                                    fontSize: 18
                                ),),
                            ),
                          ],
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
