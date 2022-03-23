
import 'package:flutter/material.dart';

AlertDialog sortPopupDialog(BuildContext context) {
  return  AlertDialog(
    title: const Text('Sort By'),
    content: SortSelectionWidget(),
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


class SortSelectionWidget extends StatefulWidget {
  const SortSelectionWidget({ Key? key }) : super(key: key);

  @override
  State<SortSelectionWidget> createState() => _SortSelectionWidgetState();
}

class _SortSelectionWidgetState extends State<SortSelectionWidget> {
   Map<String,bool> sortCriteria = {
    'HighToLow' : false, 
    'Popularity' :true,
    'LowToHigh' : false,
  };

  


  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        
        FilterChip(
            elevation: 5,
            selectedColor: Colors.black,
            label: Text(
              'Price: Low to High',
              style: TextStyle(
                color: sortCriteria['LowToHigh'] ?? false ? Colors.white : Colors.black,
              ),
            ),
            selected:  sortCriteria['LowToHigh'] ?? false,
            checkmarkColor: Colors.white,
            onSelected: (bool value) {
               sortCriteria['LowToHigh'] = value;
               if(value){
                 sortCriteria['HighToLow'] = false;
               }
              setState(() {});
            }),
        SizedBox(height: 10,),
        FilterChip(
            elevation: 5,
            selectedColor: Colors.black,
            label: Text(
              'Price: High to Low',
              style: TextStyle(
                color: sortCriteria['HighToLow'] ?? false ? Colors.white : Colors.black,
              ),
            ),
            selected:  sortCriteria['HighToLow'] ?? false,
            checkmarkColor: Colors.white,
            onSelected: (bool value) {
               sortCriteria['HighToLow'] = value;
               if(value){
                 sortCriteria['LowToHigh'] = false;
               }
              setState(() {});
            }),
            SizedBox(height: 10,),
        FilterChip(
            elevation: 5,
            selectedColor: Colors.black,
            label: Text(
              'Popularity',
              style: TextStyle(
                color: sortCriteria['Popularity'] ?? false ? Colors.white : Colors.black,
              ),
            ),
            selected:  sortCriteria['Popularity'] ?? false,
            checkmarkColor: Colors.white,
            onSelected: (bool value) {
               sortCriteria['Popularity'] = value;
              setState(() {});
            }),
      ],
    );
  }
}