import 'package:art_ecommerce/journeys/catalog/elevated_button_with_icon.dart';
import 'package:flutter/material.dart';

AlertDialog selectViewPopupDialog(BuildContext context) {
  return AlertDialog(
    title: const Text('View'),
    content: SelectViewWidget(),
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

class SelectViewWidget extends StatefulWidget {
  const SelectViewWidget({Key? key}) : super(key: key);

  @override
  State<SelectViewWidget> createState() => _SelectViewWidgetState();
}

class _SelectViewWidgetState extends State<SelectViewWidget> {
  bool gridView = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FilterChip(
            elevation: 5,
            selectedColor: Colors.black,
            label: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Grid',
                  style: TextStyle(
                    color: gridView ? Colors.white : Colors.black,
                  ),
                ),
                Icon(
                  Icons.grid_3x3_sharp,
                  color: gridView ? Colors.white : Colors.black,
                ),
              ],
            ),
            selected: gridView,
            checkmarkColor: Colors.white,
            onSelected: (bool value) {
              gridView = value;
              setState(() {});
            }),
        SizedBox(
          height: 10,
        ),
        FilterChip(
            elevation: 5,
            selectedColor: Colors.black,
            label: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Portrait',
                  style: TextStyle(
                    color: gridView ? Colors.black : Colors.white,
                  ),
                ),
                Icon(
                  Icons.clear_all,
                  color: gridView ? Colors.black : Colors.white,
                ),
              ],
            ),
            selected: !gridView,
            checkmarkColor: Colors.white,
            onSelected: (bool value) {
              gridView = !value;
              setState(() {});
            }),
      ],
    );
  }
}
