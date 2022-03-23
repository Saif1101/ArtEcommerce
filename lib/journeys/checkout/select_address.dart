import 'package:art_ecommerce/entities/AddressEntity.dart';
import 'package:art_ecommerce/journeys/checkout/address_expansion_tile.dart';
import 'package:art_ecommerce/models/models.dart';
import 'package:art_ecommerce/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SelectAddressScreen extends StatefulWidget {
  const SelectAddressScreen({Key? key}) : super(key: key);

  static const String routeName = '/select-address';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => SelectAddressScreen(),
    );
  }

  @override
  _SelectAddressScreenState createState() => _SelectAddressScreenState();
}

class _SelectAddressScreenState extends State<SelectAddressScreen> {
   

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: CustomAppBar(title: 'Address Book',),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: ListView.builder(   
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return AddressExpansionTile( Models.addresses[index], context,);
                },
              ),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/add-edit-details');
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all(CircleBorder()),
                padding: MaterialStateProperty.all(EdgeInsets.all(2)),
                backgroundColor: MaterialStateProperty.all(Colors.black)
              ),
              child: Center(child: Icon(Icons.add,size: 42,))),
          ],
        ),
      ),
    ));
  }
}
