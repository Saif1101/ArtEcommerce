import 'package:art_ecommerce/entities/PaintingEntity.dart';
import 'package:art_ecommerce/models/models.dart';
import 'package:equatable/equatable.dart';

class Cart extends Equatable {

  Cart();


   

  final PaintingEntity samplePainting = const PaintingEntity(
      imageURL:
          "https://cdn11.bigcommerce.com/s-x49po/images/stencil/1280x1280/products/48531/64528/1580979349267_Heron_painting_sunset__95466.1581158272.jpg?c=2",
      paintingID: 'Heron',
      title: 'Heron',
      themes: ['Nature', 'Animals', 'Portrait'],
      themesID: ['001', '002', '003'],
      description:
          'Bird on sunset painting (ART_4772_44791) - Handpainted Art Painting - 22in X 28in',
      isFeatured: true,
      isPopular: true,
      price: 7890,
      availability: 'Available');

  

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
