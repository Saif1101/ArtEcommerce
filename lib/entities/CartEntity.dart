import 'package:art_ecommerce/entities/PaintingEntity.dart';
import 'package:art_ecommerce/models/models.dart';
import 'package:equatable/equatable.dart';

class Cart extends Equatable {
  //List<OrderProductEntity> products;

  Cart();


  double get subtotal =>
      Models.products.fold(0, (total, current) => total + current.price);
  
  String get subtotalString => subtotal.toStringAsFixed(2); 

  String get deliveryFeeString => deliveryFee(subtotal).toString();

  String get freeDeliveryString => freeDelivery(subtotal).toString();
  
  String get totalString => total(subtotal, deliveryFee).toStringAsFixed(2); 

  double deliveryFee(subtotal) {
    if (subtotal >= 500.0) {
      return 0.0;
    } else {
      return 130.0;
    }
  }

  double total(subtotal, deliveryFee) {
    return subtotal + deliveryFee(subtotal);
  }

  String freeDelivery(subtotal) {
    if (subtotal >= 30.0) {
      return "Eligible for FREE Delivery";
    } else {
      double missing = 500.0 - subtotal;
      return "Add $missing Worth of Products To Get Delivery";
    }
  }

  @override
  List<Object?> get props => [];


}
