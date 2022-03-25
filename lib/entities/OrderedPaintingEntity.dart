import 'package:art_ecommerce/entities/PaintingEntity.dart';

class OrderProductEntity{
  final PaintingEntity product; 
  final int quantity;

  OrderProductEntity({required this.product, required this.quantity});
}