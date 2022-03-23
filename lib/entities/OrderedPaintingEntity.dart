import 'package:art_ecommerce/entities/PaintingEntity.dart';

class OrderedProduct{
  final PaintingEntity product; 
  final int quantity;

  OrderedProduct({required this.product, required this.quantity});
}