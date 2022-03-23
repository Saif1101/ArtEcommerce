import 'dart:ui';

import 'package:art_ecommerce/journeys/catalog/elevated_button_with_icon.dart';
import 'package:flutter/material.dart';

AlertDialog filterThemesPopupDialog(BuildContext context) {
  return AlertDialog(
    title: const Text('Themes'),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[FilterSelectionWidget()],
    ),
    actions: <Widget>[
      new TextButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text('Close'),
      ),
    ],
  );
}

class FilterSelectionWidget extends StatefulWidget {
  const FilterSelectionWidget({Key? key}) : super(key: key);

  @override
  State<FilterSelectionWidget> createState() => _FilterSelectionWidgetState();
}

class _FilterSelectionWidgetState extends State<FilterSelectionWidget> {
  Map<String, bool> filters = {
    'Theme1': false,
    'Theme2': false,
    'Theme3': false,
    'Theme4': false,
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FilterChip(
            elevation: 5,
            selectedColor: Colors.black,
            label: Text(
              'Theme1',
              style: TextStyle(
                color: filters['Theme1'] ?? false ? Colors.white : Colors.black,
              ),
            ),
            selected: filters['Theme1'] ?? false,
            checkmarkColor: Colors.white,
            onSelected: (bool value) {
              filters['Theme1'] = value;
              setState(() {});
            }),

        FilterChip(
            elevation: 5,
            selectedColor: Colors.black,

            label: Text('Theme2',
            style: TextStyle(
                color: filters['Theme2'] ?? false ? Colors.white : Colors.black,
              ),),
            selected: filters['Theme2'] ?? false,
            checkmarkColor: Colors.white,

            onSelected: (bool value) {
              filters['Theme2'] = value;
              setState(() {});
            }),
        FilterChip(
            elevation: 5,
            selectedColor: Colors.black,

            label: Text('Theme3', 
            style: TextStyle(
                color: filters['Theme3'] ?? false ? Colors.white : Colors.black,
              ),),
            selected: filters['Theme3'] ?? false,
            checkmarkColor: Colors.white,

            onSelected: (bool value) {
              filters['Theme3'] = value;
              setState(() {});
            }),
        FilterChip(
            elevation: 5,
            selectedColor: Colors.black,

            label: Text('Theme4', 
            style: TextStyle(
                color: filters['Theme4'] ?? false ? Colors.white : Colors.black,
              ),),
            checkmarkColor: Colors.white,

            selected: filters['Theme4'] ?? false,
            onSelected: (bool value) {
              filters['Theme4'] = value;
              setState(() {});
            }),
      ],
    );
  }
}
