import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listPopMenu = {'Logout'};
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: Colors.white),
          ),
        actions: [
          PopupMenuButton(
            onSelected: ((value) {
              handleClick(context, value);
            }),
            itemBuilder: ((context) {
              return listPopMenu.map((choice) {
                return PopupMenuItem(value: choice, child: Text(choice));
              }).toList();
            }),
          )
        ],
      ),
      body: Center(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100, bottom: 100),
            child: Image.asset(
              'assets/images/welcome.png',
              width: 150,
              height: 150,
            ),
          ),
          Text(
            "Welcome, User!",
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: Colors.black87),
          ),
          const SizedBox(height: 8),
          Text(
            "This is Home Page! Where is the Navigation start!",
            style: Theme.of(context)
                .textTheme
                .bodyText2
                ?.copyWith(color: Colors.black87),
          ),
        ],
      )),
    );
  }

  void handleClick(BuildContext context, String value) {
    switch (value) {
      case 'Logout':
        const snackBar = SnackBar(content: Text("Logout Successfull!"));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);

        Navigator.of(context)
            .pushNamedAndRemoveUntil('login', (route) => false);
        break;
    }
  }
}
