import 'package:flutter/material.dart';

class RectangleRaisedTextIconButton extends StatelessWidget {
  final String buttonText;
  final IconData icon;
  final Color iconColor;
  const RectangleRaisedTextIconButton({
    Key? key,
    required this.iconColor,
    required this.buttonText,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      child: InkWell(
       onTap: ()=>{print("Button press $buttonText")},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 6.0),
              child: Text(
                buttonText,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Icon(
              icon,
              color: iconColor,
            ),
          ],
        ),
      ),
    );
  }
}