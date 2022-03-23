import 'package:flutter/material.dart';

class TagBox extends StatelessWidget {
  final String tag;

  const TagBox({Key? key, required this.tag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2),
      ),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            tag,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
