import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Login Screen APP'),
              GestureDetector(
                onTap: () {
                  // Navigate to the login screen here
                  print('Navigate to Login Screen');
                },
                child: Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Text(''),
                ),
              ),
            ],
          ),
          backgroundColor:
              Color.fromARGB(255, 0, 80, 78), // Set background color to blue
        ),
        body: LoginPage(),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    // Authentication logic here
    String email = _emailController.text;
    String password = _passwordController.text;
    //Validation
    print('Logging in with Email: $email, Password: $password');
  }

  void _forgotPassword() {
    print('Forgot Password');
  }

  void _signUp() {
    print('Sign Up');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Codeplayon', // Title
            style: TextStyle(
              fontSize: 24, // Adjust font size as needed
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 80, 78),
              // Optional: adjust font weight
            ),
          ),
          SizedBox(height: 20.0),
          TextField(
            controller: _emailController,
            decoration: InputDecoration(
              hintText: 'User Name',
              labelText: 'Email',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20.0),
          TextField(
            controller: _passwordController,
            decoration: InputDecoration(
                hintText: 'Password',
                labelText: 'Password',
                border: OutlineInputBorder()),
            obscureText: true,
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: _login,
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  Color.fromARGB(255, 0, 80, 78), // Set background color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8), // Add rounded corners
                side: BorderSide(
                  color: Colors.white, // Add border color
                  width: 2, // Add border width
                ),
              ),
            ),
            child: Text(
              'Login',
              style: TextStyle(color: Colors.white), // Set text color to white
            ),
          ),
          TextButton(
            onPressed: _forgotPassword,
            child: Text('Forgot Password?',
                style: TextStyle(color: Color.fromARGB(255, 0, 80, 78))),
          ),
          SizedBox(height: 10.0),
          Text("Don't have an account?"),
          TextButton(
            onPressed: _signUp,
            child: Text(
              'Sign Up',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 80, 78),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
