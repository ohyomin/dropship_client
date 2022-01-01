import 'package:flutter/material.dart';

class LoginIconButton extends StatelessWidget {
  LoginIconButton(
    String imagePath,
    String display, {
    Key? key,
    required this.onPressed,
  }) : image = Image.asset(imagePath, height: 30.0),
       text = Text(display,
           style: const TextStyle(
             color: Colors.black87,
             fontSize: 15.0
           )
       ),
       super(key: key);

  final Widget image;
  final Widget text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox (
      constraints: const BoxConstraints(maxWidth: 800.0),
      child: ButtonTheme(
        child: ElevatedButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              image,
              text,
              Opacity(
                opacity: 0.0,
                child: image
              ),
            ],
          ),
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
             primary: Colors.white,
             padding: const EdgeInsets.symmetric(vertical: 15.0)
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(4.0),
          ),
        ),
      ),
    );
  }
}