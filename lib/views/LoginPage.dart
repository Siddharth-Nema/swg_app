import 'package:flutter/material.dart';
import 'package:swg_flutter/views/BaseLayout.dart';
import 'package:swg_flutter/views/LoginPage/InputField.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _rollController = TextEditingController();

  void getValue() {
    print(_nameController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg.png'), fit: BoxFit.cover)),
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage('assets/images/logo_black.png'),
                  height: 120,
                ),
                const Text(
                  "Student Welfare Group",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 80,
                ),
                InputField(
                  text: "Name",
                  controller: _nameController,
                ),
                const SizedBox(
                  height: 25,
                ),
                InputField(
                  text: "Roll No",
                  controller: _rollController,
                ),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: () {
                    getValue();
                    Navigator.pushNamed(context, "/");
                  },
                  style: const ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32)))),
                    minimumSize: MaterialStatePropertyAll(Size(160, 40)),
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0xFF88D4FF)),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Skip Login",
                  style: TextStyle(fontSize: 16, color: Color(0xFF88D4FF)),
                ),
                Icon(
                  Icons.chevron_right,
                  color: Color(0xFF88D4FF),
                  size: 32,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
