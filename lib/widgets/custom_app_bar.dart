import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String? title; 
  final bool showSearch; 
  final bool showLogout; 
  final bool implyLeading;
  const CustomAppBar({
    this.implyLeading = true,
    this.showSearch = false,
    this.showLogout = false,
    this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: implyLeading,
      iconTheme: IconThemeData(color: Colors.black),
   
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Text(
        title??'Artistique',
        style: GoogleFonts.manrope(
            color: Colors.black,
            fontWeight: FontWeight.w400, 
            fontSize: 40,
           ),
      ),
      actions: [
       showSearch?IconButton(onPressed: ()=>{Navigator.pushNamed(context, '/search-page',)},
        icon: Icon(Icons.search_sharp)
        ):SizedBox.shrink(),
        showLogout?IconButton(onPressed: ()=>{Navigator.of(context).pushNamedAndRemoveUntil('/login', (Route<dynamic> route) => false)},
        icon: Icon(Icons.logout_sharp)
        ):SizedBox.shrink(),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(52);
}