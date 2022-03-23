import 'package:flutter/material.dart';

class ElevatedInkButtonWithIcon extends StatefulWidget {
  final String label;
  final Icon icon;
  final Color defaultColor;
  final Color fillColor;
  const ElevatedInkButtonWithIcon({
    Key? key,
    required this.defaultColor,
    required this.fillColor,
    required this.label,
    required this.icon,
  }) : super(key: key);

  @override
  State<ElevatedInkButtonWithIcon> createState() =>
      _ElevatedInkButtonWithIconState();
}

class _ElevatedInkButtonWithIconState extends State<ElevatedInkButtonWithIcon> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: InkWell(
        onTap: (){
          setState(() {
            check = !check;
          });
        },
        child: Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
                color: check ? widget.defaultColor : widget.fillColor,
                border: Border.all(width: 2.0, color: Colors.black)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${widget.label}",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(color: Colors.black),
                ),
                widget.icon,
              ],
            )),
      ),
    );
  }
}