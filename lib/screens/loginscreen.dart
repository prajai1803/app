import 'package:app/screens/homescreen.dart';
import 'package:app/screens/signupscreen.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formController = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: _formController,
            child: Column(
              children: [
                Container(
                  height: 300,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(90),
                    ),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/Logo.png'),
                        const Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    height: 50,
                    width: 500,
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 50),
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      color: Colors.grey,
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(0, 1),
                            blurRadius: 1,
                            color: Colors.black),
                      ],
                    ),
                    child: TextFormField(
                      controller: _emailController,
                      validator: (value) => EmailValidator.validate(value!)
                          ? null
                          : "Email is not valid",
                      cursorColor: Colors.red,
                      decoration: const InputDecoration(
                        icon: Icon(Icons.email),
                        hintText: "Enter Email",
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    height: 50,
                    width: 500,
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      color: Colors.grey,
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(0, 1),
                            blurRadius: 1,
                            color: Colors.black),
                      ],
                    ),
                    child: TextFormField(
                      controller: _passwordController,
                      validator: (value) =>
                          (value!.isEmpty) ? "Password is required" : null,
                      cursorColor: Colors.red,
                      decoration: const InputDecoration(
                        icon: Icon(Icons.vpn_key),
                        hintText: "Password",
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () async {
                        if (_formController.currentState!.validate()) {
                          final pref = await SharedPreferences.getInstance();
                          pref.setString("user", _emailController.text);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                        } else {
                          print("Wrong");
                        }
                      },
                      child: const Text("Login"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have a account?"),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SignUpScreen()));
                          },
                          child: const Text("sign up"),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
