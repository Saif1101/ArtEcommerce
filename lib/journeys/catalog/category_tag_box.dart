import 'package:flutter/material.dart';

class CategoryTagBox extends StatelessWidget {
  final String? label;
  final IconData? icon;

  const CategoryTagBox({Key? key, this.label, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(32)),
      child: Material(
        elevation: 10,
        child: Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          child: Center(
            child: Row(
              children: [
                Text(
                  label ?? '',
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  icon ?? Icons.arrow_drop_down,
                  size: 18,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}