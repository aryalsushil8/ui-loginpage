import 'package:flutter/material.dart';
import 'package:register_app/view/secondScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/login.png'))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const SafeArea(child: Text('UI/Ux Register page')),
          centerTitle: true,
        ),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'WelCome User',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: 'Username',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)))),
          ),
          const SizedBox(
            height: 20,
          ),
          const TextField(
            decoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.red),
                hintText: 'Password',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)))),
          ),
          const SizedBox(
            height: 5,
          ),
          ElevatedButton(
              onPressed: () {
                Future.delayed(const Duration(seconds: 3), () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const SecondScreen()));
                });
              },
              child: const Text('Login'))
        ])),
      ),
    );
  }
}
