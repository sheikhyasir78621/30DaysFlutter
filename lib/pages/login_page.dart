import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
//  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Image.asset(
            "assets/images/login.png",
            fit: BoxFit.cover,
            height: 150,
            width: 150,
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Welcome",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter your username", labelText: "Username"),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Enter Password",
                    hintText: "Enter your password",
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  child: Text("LogIn"),
                  style: TextButton.styleFrom(),
                  onPressed: () {
                    print("Hi Yasir");
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
