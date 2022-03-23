import 'package:flutter/material.dart';

class TabTitleWidget extends StatelessWidget {
  final String title;
  final Function() onTap;
  final bool isSelected;

  const TabTitleWidget({
    Key? key,
    required this.title,
    required this.onTap,
    this.isSelected = false,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border(
            bottom: BorderSide(
              color: isSelected ? Colors.black: Colors.transparent, //TODO Change title to isSelected
              width: 2.0,
            ),
          ),
        ),
        child: Text(
          title, 
          style: isSelected
              ? Theme.of(context).textTheme.subtitle2
              : Theme.of(context).textTheme.subtitle1,
        ),
      ),
    );
  }
}