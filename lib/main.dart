import 'package:flutter/material.dart';
import 'package:flutter_application_1/Login.dart';
import 'package:google_fonts/google_fonts.dart'; // Import Google Fonts

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'HalloDock';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: RegisterPage(),
    );
  }
}

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _usernameRegister = TextEditingController();
  final TextEditingController _emailRegister = TextEditingController();
  final TextEditingController _passwordRegister = TextEditingController();
  final TextEditingController _confirmPasswordRegister =
      TextEditingController();

  void _view() {
    String username = _usernameRegister.text;
    String email = _emailRegister.text;
    String password = _passwordRegister.text;
    String confirmPassword = _confirmPasswordRegister.text;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Register'),
          content: Text(
              'Username: $username\nEmail: $email\nPassword: $password\nConfirm Password: $confirmPassword'),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'Create an Account',
                      style: GoogleFonts.pacifico(
                        textStyle: const TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      controller: _usernameRegister,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'User Name',
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      controller: _emailRegister,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: TextField(
                      controller: _passwordRegister,
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.lock),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: TextField(
                      controller: _confirmPasswordRegister,
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Confirm Password',
                        prefixIcon: Icon(Icons.lock),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20), // Space before Register button
                  Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      child: const Text('Register'),
                      onPressed: () {
                        _view();
                      },
                    ),
                  ),
                  const SizedBox(height: 20), // Space before "Or"
                  const Center(
                    child: Text('Or', style: TextStyle(fontSize: 16)),
                  ),
                  const SizedBox(height: 20), // Space after "Or"
                ],
              ),
            ),
            // Sign In with Google button
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton.icon(
                onPressed: () {
                  // Action when "Sign In with Google" button is pressed
                },
                label: const Text(
                  'Sign In with Google',
                  style: TextStyle(color: Color.fromARGB(255, 1, 87, 248)),
                ),
                style: ElevatedButton.styleFrom(),
              ),
            ),
            // Row for Login redirect
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Already have an account?'),
                const SizedBox(width: 10), // Space between text and button
                TextButton(
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 20), // Space below the Row
          ],
        ),
      ),
    );
  }
}
