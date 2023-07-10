import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/gestures.dart';
import 'package:flufy/register.dart';
import 'package:flufy/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            textTheme:
                GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
        home: const HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/logo_blue.png'),
          const SizedBox(height: 16),
          const Text(
            "Welcome to flufy",
            style: TextStyle(
                color: Color(0xFF223263),
                fontSize: 16,
                fontWeight: FontWeight.w900),
          ),
          const SizedBox(height: 8),
          const Text("Sign in to continue"),
          const SizedBox(height: 28),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Your Mail",
                  prefixIcon: Icon(Icons.email)),
            ),
          ),
          const SizedBox(height: 8),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Password",
                  prefixIcon: Icon(Icons.lock)),
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Home()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF40BFFF)),
                child: const Text("Sign In"),
              ),
            ),
          ),
          const SizedBox(height: 21),
          const Text(
            "------------------- OR -------------------",
            style: TextStyle(color: Color(0xFF9098B1)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: OutlinedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                label: const Text(
                  "Login With Google",
                  style: TextStyle(color: Color(0xFF9098B1)),
                ),
                icon: const ImageIcon(
                  AssetImage('assets/images/ic_google.png'),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: OutlinedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                label: const Text(
                  "Login With Facebook",
                  style: TextStyle(color: Color(0xFF9098B1)),
                ),
                icon: const ImageIcon(
                  AssetImage('assets/images/ic_facebook.png'),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            "Forgot Password",
            style: TextStyle(
                color: Color(0xFF40BFFF), fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 8),
          RichText(
              text: TextSpan(
                  text: "Don't have a account? ",
                  style: const TextStyle(color: Color(0xFF9098B1)),
                  children: [
                TextSpan(
                    text: "Register",
                    style: const TextStyle(
                        color: Color(0xFF40BFFF), fontWeight: FontWeight.w700),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Register()),
                          ))
              ]))
        ],
      ),
    );
  }
}
