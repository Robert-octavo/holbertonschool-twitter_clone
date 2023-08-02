// create a stateful widget SignIn with these attributes :

//     _emailController : TextEditingController
//     _passwordController : TextEditingController

// Requirements :

//     Image that you need : http://assets.stickpng.com/images/580b57fcd9996e24bc43c53e.png
//     Initiate _emailController inside the initState() method
//     Initiate _passwordController inside the initState() method
//     Dispose of _emailController inside the dispose() method
//     Dispose of _passwordController inside the dispose() method
//     The screen should be scrollable if needed
//     Make sure to use the already created custom widgets while passing the right params
//     Leave the onPressed functions empty for now

//     Edit the Sign Up button to navigate to SignUp() page when pressed

import 'package:flutter/material.dart';

import '../widgets/entry_field.dart';
import '../widgets/flat_button.dart';
import '../screens/signup_screen.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _emailController;
    _passwordController;
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 80),
                child: Image.network(
                  'http://assets.stickpng.com/images/580b57fcd9996e24bc43c53e.png',
                  width: 200,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 50),
                child: CustomEntryField(
                  hint: 'Email',
                  controller: _emailController,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: CustomEntryField(
                  hint: 'Password',
                  controller: _passwordController,
                  isPassword: true,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: CustomFlatButton(
                  label: 'Sign In',
                  onPressed: () {},
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: CustomFlatButton(
                  label: 'Sign Up',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUp(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
