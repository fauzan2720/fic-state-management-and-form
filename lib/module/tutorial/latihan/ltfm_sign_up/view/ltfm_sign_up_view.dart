import 'package:flutter/material.dart';
import 'package:example/core.dart';

class LtfmSignUpView extends StatefulWidget {
  const LtfmSignUpView({Key? key}) : super(key: key);

  Widget build(context, LtfmSignUpController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtfmSignUp"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              //! 1. Buatlah textfield email
              QTextField(
                value: "",
                label: "Email",
                hint: "Your email",
                onChanged: (value) {},
              ),

              //! 2. Buatlah textfield password
              QTextField(
                value: "",
                label: "Password",
                hint: "Your password",
                obscure: true,
                onChanged: (value) {},
              ),

              //! 3. Buatlah textfield confirm password
              QTextField(
                value: "",
                label: "Password",
                hint: "Your password",
                obscure: true,
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 20.0,
              ),

              //! 4. Buat sebuah tombol,
              //gunakan icon: Icons.login
              //atur text-nya: Login
              //ketika di klik, panggil:
              // controller.doLogin()
              //Jika dialog muncul ketika tombol di klik, tasks ini selesai
              ElevatedButton.icon(
                icon: const Icon(Icons.login),
                label: const Text("Login"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  controller.doLogin();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtfmSignUpView> createState() => LtfmSignUpController();
}
