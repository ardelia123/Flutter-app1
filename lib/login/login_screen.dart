import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 
        Text(
          "Login",
               style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child:
                      Icon(Icons.punch_clock, size: 100, color: Color.fromARGB(255, 145, 168, 78)),
                ),
                const SizedBox(height: 12),
                Center(
                  child: Text(
                    "Device",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(color: Color.fromARGB(221, 48, 44, 11)),
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  "Email",
                  style: Theme.of(context).textTheme.caption,
                ),
                const TextField(
                    decoration:
                        InputDecoration(hintText: "Input your email...")),
                const SizedBox(height: 12),
                Text(
                  "Password",
                  style: Theme.of(context).textTheme.caption,
                ),
                const TextField(
                    obscureText: true,
                    decoration:
                        InputDecoration(hintText: "Input your Password...")),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                    onPressed: () => redirectToHome(),
                    child: Text(
                      "Submit", 
                      style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void redirectToHome() {
    const snackBar = SnackBar(content: Text("Login Berhasil!"));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);

    Navigator.of(context).pushNamedAndRemoveUntil("menu", (route) => false);
  }
}
