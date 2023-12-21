import 'package:flutter/material.dart';
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
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 54),
                child: Image.network(
                  "https://cdn-icons-png.flaticon.com/512/2847/2847502.png",
                  scale: 5,
                ),
              ),
              InputField(
                text: "Name",
                controller: _nameController,
              ),
              InputField(
                text: "Roll No",
                controller: _rollController,
              ),
              ElevatedButton(
                onPressed: () {
                  getValue();
                },
                style: const ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32)))),
                  minimumSize: MaterialStatePropertyAll(Size(160, 40)),
                  backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 205, 239, 255)),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Skip Login",
                    style: TextStyle(fontSize: 16),
                  ),
                  Icon(
                    Icons.chevron_right,
                    size: 32,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
