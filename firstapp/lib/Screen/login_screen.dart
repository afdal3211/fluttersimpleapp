import 'package:flutter/material.dart';

import 'package:firstapp/Screen/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController EmailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Login', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),

              const SizedBox(height: 10),

              TextField(
                controller: EmailController,
                decoration: const InputDecoration(labelText: 'Email', border: OutlineInputBorder())
              ),
              
              const SizedBox(height: 10),
              
              TextField(
                controller: PasswordController,
                decoration: const InputDecoration(labelText: 'Password', border: OutlineInputBorder())
            ),

              Container(
                padding: const EdgeInsets.only(top: 10),
                height: 50,
                width: 500,
                child: ElevatedButton(
                  child: const Text('Login'), 
                  onPressed: () {
                    Navigator.push(
                      context,MaterialPageRoute(builder: (context) => const HomeScreen()),
  );
                  })
              )

            ])
          
          

          
        ),
      )
    );
  }
}