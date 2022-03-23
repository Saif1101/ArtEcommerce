
import 'package:equatable/equatable.dart';

class PaintingEntity extends Equatable{
  final String paintingID; 
  final String title; 
  final String imageURL;
  final List<String> themes; 
  final List<String> themesID; 
  final String description; 
  final double price; 
  final String availability;
  final bool isFeatured; 
  final bool isPopular;


  const PaintingEntity({
    required this.imageURL,
    required this.paintingID,
    required this.title,
    required this.themes, 
    required this.themesID, 
    required this.description,
    required this.isFeatured, 
    required this.isPopular,
    required this.price, 
    required this.availability,

    });

  @override
  List<Object?> get props => [paintingID,title,themesID]; 

  @override
  bool? get stringify => true;
  
  
}