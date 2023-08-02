// create a stateful widget SignUp with these attributes :

//     _nameController : TextEditingController
//     _emailController : TextEditingController
//     _passwordController : TextEditingController
//     _confirmController : TextEditingController
//     _formKey : GlobalKey()

// Requirements :

//     Image that you need : http://assets.stickpng.com/images/580b57fcd9996e24bc43c53e.png
//     Initiate _nameController inside the initState() method
//     Initiate _emailController inside the initState() method
//     Initiate _passwordController inside the initState() method
//     Initiate _confirmController inside the initState() method
//     Dispose of _nameController inside the dispose() method
//     Dispose of _emailController inside the dispose() method
//     Dispose of _passwordController inside the dispose() method
//     Dispose of _confirmController inside the dispose() method
//     You need to use the Form widget wrapped in a container
//     Container height : screen height - 88
//     Container padding : horizontal 30
//     Set key attribute of Form to _formKey
//     Make sure to use the already created custom widgets while passing the right params
//     Leave the onPressed functions empty for now
//     The screen should be scrollable if needed

import 'package:flutter/material.dart';

import '../widgets/entry_field.dart';
import '../widgets/flat_button.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _nameController;
    _emailController;
    _passwordController;
    _confirmController;
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 80),
                  child: Image.network(
                    'http://assets.stickpng.com/images/580b57fcd9996e24bc43c53e.png',
                    height: 100,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                CustomEntryField(
                  hint: 'Name',
                  controller: _nameController,
                ),
                CustomEntryField(
                  hint: 'Email',
                  controller: _emailController,
                ),
                CustomEntryField(
                  hint: 'Password',
                  controller: _passwordController,
                  isPassword: true,
                ),
                CustomEntryField(
                  hint: 'Confirm Password',
                  controller: _confirmController,
                  isPassword: true,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: CustomFlatButton(
                    label: 'Sign Up',
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: CustomFlatButton(
                    label: 'Sign In',
                    onPressed: () {},
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
