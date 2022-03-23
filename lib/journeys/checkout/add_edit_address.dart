import 'package:art_ecommerce/entities/AddressEntity.dart';
import 'package:art_ecommerce/journeys/product/product_screen.dart';
import 'package:art_ecommerce/journeys/product/rectangle_raised_text_icon_button.dart';
import 'package:art_ecommerce/widgets/custom_app_bar.dart';
import 'package:art_ecommerce/widgets/text_form_field.dart';
import 'package:flutter/material.dart';

// Can also double up as add new address page

class AddEditAddressScreen extends StatefulWidget {

  final AddressEntity? addressEntity; 

  
  const AddEditAddressScreen({
    Key? key, 
    this.addressEntity}) : super(key: key);

  static const String routeName = '/add-edit-details';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => AddEditAddressScreen(),
    );
  }

  @override
  State<AddEditAddressScreen> createState() => _AddEditAddressScreenState();
}

class _AddEditAddressScreenState extends State<AddEditAddressScreen> {
  final TextEditingController emailController =
      TextEditingController(); //Give default value = user's profile email
  final TextEditingController nameController =
      TextEditingController(); //Give default value = user's profile name

  //
  final TextEditingController addressLine1Controller =  TextEditingController();
  final TextEditingController addressLine2Controller = TextEditingController();
  final TextEditingController landmarkController = TextEditingController();
  final TextEditingController pinCodeController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController mobileNumberController = TextEditingController();
  bool isChecked = false;



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: "New Address",
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Customer Information',
                  style: Theme.of(context).textTheme.headline4,
                ),
                SizedBox(
                  height: 15,
                ),
                buildTextFormField(emailController, context, 'Email',initialValue: widget.addressEntity?.email),
                buildTextFormField(nameController, context, 'Full Name', initialValue: widget.addressEntity?.name),
                buildTextFormField(
                    mobileNumberController, context, 'Mobile Number',
                    hintText: "10-digit mobile number without prefixes"),
                  
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Delivery Details',
                  style: Theme.of(context).textTheme.headline4,
                ),
                SizedBox(
                  height: 15,
                ),
                buildTextFormField(addressLine1Controller, context, 'Address',
                    hintText: 'Line 1',
                    initialValue: widget.addressEntity?.address1),
                buildTextFormField(addressLine2Controller, context, '',
                    hintText: 'Line 2',
                    initialValue: widget.addressEntity?.address2),
                buildTextFormField(landmarkController, context, 'Landmark',
                    hintText: 'Nearest landmark', 
                    initialValue: widget.addressEntity?.landmark),
                buildTextFormField(pinCodeController, context, 'Pincode',
                    hintText: '6 digits, [0-9] PIN code', 
                    initialValue: widget.addressEntity?.pinCode.toString()),
                buildTextFormField(cityController, context, 'City',
                initialValue: widget.addressEntity?.city),
                SizedBox(
                  height: 15,
                ),
                RectangleRaisedTextIconButton(
                    iconColor: Colors.black,
                    buttonText: 'Save',
                    icon: Icons.save)
              ],
            ),
          ),
        ),
      ),
    );
  }
}



Row CheckBoxWithLabel(
  String label,
  bool value,
  BuildContext context,
) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Checkbox(
        checkColor: Colors.blue,
        value: value,
        onChanged: (bool? value) {
          value = value!;
        },
      ),
      Text(
        label,
        style: Theme.of(context).textTheme.bodyText2,
      ),
    ],
  );
}
