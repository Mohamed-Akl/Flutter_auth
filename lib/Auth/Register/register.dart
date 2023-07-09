import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[400],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _headerContainer(),
          Expanded(
              child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30))),
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.teal.withOpacity(0.3),
                          blurRadius: 10,
                          spreadRadius: 5,
                          offset: const Offset(0, 5), // Shadow position
                        ),
                      ]),
                  child: const TextField(
                    decoration: InputDecoration(
                        hintText: "Name", border: InputBorder.none),
                    enableSuggestions: false,
                    autocorrect: false,
                  ),
                ),
                spaceBox(),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.teal.withOpacity(0.3),
                          blurRadius: 10,
                          spreadRadius: 5,
                          offset: const Offset(0, 5), // Shadow position
                        ),
                      ]),
                  child: const TextField(
                    decoration: InputDecoration(
                        hintText: "Email", border: InputBorder.none),
                    enableSuggestions: false,
                    autocorrect: false,
                  ),
                ),
                spaceBox(),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.teal.withOpacity(0.3),
                          blurRadius: 10,
                          spreadRadius: 5,
                          offset: const Offset(0, 5), // Shadow position
                        ),
                      ]),
                  child: const TextField(
                    decoration: InputDecoration(
                        hintText: "Password", border: InputBorder.none),
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                  ),
                ),
                spaceBox(),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.teal.withOpacity(0.3),
                          blurRadius: 10,
                          spreadRadius: 5,
                          offset: const Offset(0, 5), // Shadow position
                        ),
                      ]),
                  child: const TextField(
                    decoration: InputDecoration(
                        hintText: "Confirm Password", border: InputBorder.none),
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                  ),
                ),
                spaceBox(),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(15)),
                  child: const Text("Register"),
                ),
                spaceBox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Have Account?"),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text("login"))
                  ],
                )
              ],
            ),
          )),
        ],
      ),
    );
  }

  spaceBox() {
    return const SizedBox(height: 20);
  }

  _headerContainer() {
    return Container(
      height: 200,
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Register".toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            "Register to continue".toLowerCase(),
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.white54, fontWeight: FontWeight.normal),
          )
        ],
      ),
    );
  }
}
