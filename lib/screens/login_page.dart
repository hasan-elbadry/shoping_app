import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoping_app/providers/login_provider.dart';
import 'package:shoping_app/screens/product_page.dart';
import 'package:shoping_app/screens/registration_page.dart';

import '../widgets/text_field_custom.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Consumer<LoginProvider>(
          builder: (context, provider, child) => Form(
            key: formKey,
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 150,
                  child: Icon(
                    Icons.person,
                    size: 250,
                  ),
                ),
                textFormCustom('email', false, provider.email, Icons.email),
                textFormCustom(
                    'password', true, provider.password, Icons.password),
                ElevatedButton(
                    style: const ButtonStyle(
                        padding: WidgetStatePropertyAll(EdgeInsets.symmetric(
                            vertical: 15, horizontal: 50))),
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {
                        await provider.checkLogin();
                        provider.email.clear();
                        provider.password.clear();

                        if (provider.user == null) {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text('invalid data'),
                            showCloseIcon: true,
                          ));
                        } else {
                          print(provider.user);
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(provider.user!.email),
                            showCloseIcon: true,
                          ));
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ProductPage()));
                        }
                      }
                    },
                    child: const Text(
                      'Login',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                    )),
                const SizedBox(height: 10),
                TextButton(
                    style: const ButtonStyle(
                        padding: WidgetStatePropertyAll(EdgeInsets.symmetric(
                            vertical: 15, horizontal: 50))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegistrationPage()));
                    },
                    child: const Text(
                      'Register',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
