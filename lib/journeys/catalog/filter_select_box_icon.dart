import 'package:flutter/material.dart';

class FilterSelectBoxWithIcon extends StatelessWidget {
  final IconData icon;
  final String? string;
  const FilterSelectBoxWithIcon({
    Key? key,
    this.string,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(32)),
        child: Container(
          padding: EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: Color.fromARGB(179, 231, 231, 231),
          ),
          child: Center(
            child: Icon(
              icon,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}