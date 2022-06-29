import 'package:app/screens/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _form = GlobalKey<FormState>();
  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: _form,
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
                          "Sing UP",
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Center(
                    child: Container(
                      height: 50,
                      width: 500,
                      margin:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
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
                        validator: (value) =>
                            (value!.isEmpty) ? "First Name is Reqired" : null,
                        controller: _firstName,
                        cursorColor: Colors.red,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.person),
                          hintText: "First Name",
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
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
                      validator: (value) =>
                          (value!.isEmpty) ? "Last name is reqired" : null,
                      controller: _lastName,
                      cursorColor: Colors.red,
                      decoration: const InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: "Last Name",
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
                      controller: _email,
                      validator: (value) => EmailValidator.validate(value!)
                          ? null
                          : "Email is not valid",
                      cursorColor: Colors.red,
                      decoration: const InputDecoration(
                        icon: Icon(Icons.email),
                        hintText: "Email",
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
                      validator: (value) =>
                          (value!.isEmpty) ? "Password is Reqired" : null,
                      controller: _password,
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
                  padding: const EdgeInsets.only(top: 15),
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        if (_form.currentState!.validate()) {
                          print("done");
                        }
                      },
                      child: const Text("Sign Up"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 1),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Already have account?"),
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LoginScreen()));
                            },
                            child: const Text("login")),
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
