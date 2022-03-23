import 'package:art_ecommerce/entities/AddressEntity.dart';
import 'package:flutter/material.dart';

Widget AddressExpansionTile(AddressEntity address, BuildContext context) 
  {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: ExpansionTile(
          trailing: GestureDetector(
            onLongPress: ()
            { 
              print('Pushing to order-confirmation');
              Navigator.pushNamed(context, '/order-confirmation');
            }, //Direct to the next page
            child: Icon(
              Icons.arrow_right,
              color: Colors.black,
               size: 32,
              ),           
          ) ,
          leading: Icon(           
            Icons.home_sharp,
            color: Colors.black,
           
          ),
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          childrenPadding: EdgeInsets.all(15.0),
          title: Text(
            address.name,
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w800),
          ),
          subtitle: Text(
            address.mobileNumber,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
          ),
          children: [
            Divider(
              thickness: 2.0,
            ),
            Text(
              address.address1,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              address.address2 + address.address2 + address.address2,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              address.pinCode.toString(),
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 15,
            ),
            Material(
              elevation: 5,
              child: IntrinsicHeight(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Edit',
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      VerticalDivider(
                        thickness: 1.0,
                        color: Colors.black,
                      ),
                      Text(
                        'Delete',
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }