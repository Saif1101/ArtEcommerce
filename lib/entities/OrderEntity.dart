
import 'package:art_ecommerce/entities/AddressEntity.dart';
import 'package:art_ecommerce/entities/OrderedPaintingEntity.dart';
import 'package:art_ecommerce/entities/PaintingEntity.dart';
import 'package:equatable/equatable.dart';

class OrderEntity extends Equatable{
  final String orderID;
  final List<OrderedProduct> products; 
  final AddressEntity address; 

  final DateTime dateTime; 
  final double total; 
  final double subtotal; 
  final double deliveryFee;
  
  final String status; 

  OrderEntity
  (
   {required this.address,
   required this.orderID,
   required this.products, 
   required this.dateTime,
   required this.total,
   required this.subtotal, 
   required this.deliveryFee,
   required this.status,}
   );

  @override
  List<Object?> get props => [orderID]; 

}