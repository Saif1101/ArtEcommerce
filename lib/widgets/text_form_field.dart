import 'package:flutter/material.dart';

Padding buildTextFormField(
    TextEditingController controller, 
    BuildContext context, 
    String labelText,
    {String? hintText, 
    String? initialValue
    }) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 25),
    child: Row(
      children: [
        SizedBox(
          width: 75,
          child: Text(
            labelText,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        Expanded(
          child: TextFormField(
            
            controller: controller,
            decoration: InputDecoration(
                hintText: hintText ?? '',
                hintMaxLines: 5,
                isDense: true,
                contentPadding: const EdgeInsets.only(
                  left: 8.0,
                ),
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black))),
          ),
        )
      ],
    ),
  );
}