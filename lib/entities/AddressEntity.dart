import 'package:equatable/equatable.dart';

class AddressEntity extends Equatable {
  final String addressID; 
  final String name;
  final String email; 
  final int pinCode;
  final String address1;
  final String address2;
  final String landmark;
  final String city;
  final String state;
  final String mobileNumber;
  final bool recentlyUsed;

  const AddressEntity({
    this.recentlyUsed=false,
    required this.addressID, 
    required this.email, 
    required this.name, required this.pinCode, required this.address1,required this.address2,
      required this.landmark, required this.city,required this.state, required this.mobileNumber});

  @override
  List<Object?> get props => [name,pinCode,city,state,address1, mobileNumber];
}
