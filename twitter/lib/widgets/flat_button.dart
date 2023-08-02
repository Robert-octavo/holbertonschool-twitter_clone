// Inside flat_button.dart create a new stateless widget CustomFlatButton with these attributes :

//     label: String
//     onPressed : Function

// Widget requirements :

//     Using TextButton
//     Set the onPressed argument to the onPressed function pointer
//     Set the button label to label
//     Set the label font to Raleway
//     Set the label font size to 30 and height: 1

import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  final String label;
  final Function onPressed;

  const CustomFlatButton({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onPressed(),
      child: Text(
        label,
        style: const TextStyle(
          fontFamily: 'Raleway',
          fontSize: 30,
          height: 1,
        ),
      ),
    );
  }
}
