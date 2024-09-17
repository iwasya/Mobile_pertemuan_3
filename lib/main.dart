import 'package:flutter/material.dart';
import 'package:flutter_application_1/Login.dart';
import 'package:google_fonts/google_fonts.dart'; // Import Google Fonts

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'HalloDock';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: const RegisterPage(),
    );
  }
}

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

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
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Confirm Password',
                        prefixIcon: Icon(Icons.lock),
                      ),
                    ),
                  ),
                  // Menambahkan jarak antara "Confirm Password" dan tombol "Register"
                  const SizedBox(height: 20),
                  Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      child: const Text('Register'),
                      onPressed: () {
                        // Aksi yang dilakukan saat tombol register ditekan
                      },
                    ),
                  ),
                  const SizedBox(
                      height: 20), // Menambahkan jarak sebelum teks "Or"
                  Center(
                    child: const Text('Or', style: TextStyle(fontSize: 16)),
                  ),
                  const SizedBox(
                      height: 20), // Menambahkan jarak setelah teks "Or"
                ],
              ),
            ),
            // Menambahkan tombol "Sign In with Google"
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton.icon(
                onPressed: () {
                  // Aksi yang dilakukan saat tombol "Sign In with Google" ditekan
                },
                label: const Text(
                  'Sign In with Google',
                  style: TextStyle(color: Color.fromARGB(255, 1, 87, 248)),
                ),
                style: ElevatedButton.styleFrom(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Already have an account?'),
                SizedBox(width: 10), // Menambahkan jarak antara teks dan tombol
                TextButton(
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                ),
              ],
            ),
            SizedBox(height: 20), // Menambahkan jarak di bawah row
          ],
        ),
      ),
    );
  }
}
