import 'package:flutter/material.dart';
import 'package:flutter_auth/Auth/Register/register.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                        hintText: "Please Enter Your Email",
                        border: InputBorder.none),
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
                        hintText: "Please Enter Your Password",
                        border: InputBorder.none),
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                  ),
                ),
                Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: TextButton(
                        onPressed: () {},
                        child: const Text("Forget Password?"))),
                spaceBox(),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(15)),
                  child: const Text("login"),
                ),
                spaceBox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't Have Account?"),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const RegisterScreen()));
                        },
                        child: const Text("Register"))
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
            "login".toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            "login to continue".toLowerCase(),
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.white54, fontWeight: FontWeight.normal),
          )
        ],
      ),
    );
  }
}
