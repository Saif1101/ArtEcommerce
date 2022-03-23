import 'package:art_ecommerce/entities/FAQEntity.dart';
import 'package:art_ecommerce/models/models.dart';
import 'package:flutter/material.dart';


class FAQCard extends StatelessWidget {

  //final FAQEntity faq; 
  
  const FAQCard({ Key? key,  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Card(
        child: ExpansionTile(
          leading: Icon(           
            Icons.question_answer,
            color: Colors.black,
           
          ),
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          childrenPadding: EdgeInsets.all(15.0),
          title: Text(
            Models().faqs[0].question,
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w800),
          ),
          children: [
            Divider(
              thickness: 2.0,
            ),            
            SizedBox(
              height: 15,
            ),
             Text(
             Models().faqs[0].answer,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
          ),
          ],
        ),
      );
  }
}