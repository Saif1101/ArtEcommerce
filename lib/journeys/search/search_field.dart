import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  final Function onSubmit;
  final TextEditingController searchController;

  const SearchField({Key? key, required this.onSubmit, required this.searchController}) :
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: searchController,
      decoration: InputDecoration(
          border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(36.0),
    ),
        fillColor: Colors.white,
          contentPadding: EdgeInsets.all(20),
          hintText: 'Search',
          filled: true,
          prefixIcon: Icon(
            Icons.search,
            size: 28.0,
          ),
          suffixIcon: IconButton(
            icon: Icon(Icons.clear),
            onPressed: () => searchController.clear(),
          )
      ),
      onFieldSubmitted: (value){onSubmit(value);}, // passes in the typed query to search Users
    );
  }
}