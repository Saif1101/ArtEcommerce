import 'package:art_ecommerce/entities/AddressEntity.dart';
import 'package:art_ecommerce/entities/FAQEntity.dart';
import 'package:art_ecommerce/entities/OrderEntity.dart';
import 'package:art_ecommerce/entities/OrderedPaintingEntity.dart';
import 'package:art_ecommerce/entities/PaintingEntity.dart';

class Models{
  static const List<PaintingEntity> products = [
    PaintingEntity(
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
        availability: 'Available'),
        PaintingEntity(
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
        availability: 'Available'),
        PaintingEntity(
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
        availability: 'Available'),
    PaintingEntity(
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
        availability: 'Available'),
    PaintingEntity(
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
        availability: 'Available')
  ];
  static const List<AddressEntity> addresses = [
     AddressEntity(
       addressID: '#123',
       email: 'sfn1101@gmail.com',
      name: 'Saif Khan',
      pinCode: 414029,
      address1: 'House Number',
      address2: 'Locality',
      landmark: 'Landmark',
      city: 'Jaipur',
      state: 'Rajasthan',
      mobileNumber: '7xxxxxxxxx',
    ),
    AddressEntity(
       addressID: '#456',
       email: 'sfn1101@gmail.com',
      name: 'Saif Khan2',
      pinCode: 414021,
      address1: 'House Number',
      address2: 'Locality',
      landmark: 'Landmark',
      city: 'Mumbai',
      state: 'Maharashtra',
      mobileNumber: '7xxxxxxxxx',
    ),
    AddressEntity(
       addressID: '#789',
       email: 'sfn1101@gmail.com',
      name: 'Saif Khan3',
      pinCode: 515027,
      address1: 'House Number',
      address2: 'Locality',
      landmark: 'Landmark',
      city: 'Ahemdabad',
      state: 'Gujarat',
      mobileNumber: '123456789',
    ),
    AddressEntity(
       addressID: '#101112',
       email: 'sfn1101@gmail.com',
      name: 'Saif Khan4',
      pinCode: 412115,
      address1: '527 b G.F',
      address2: 'Umaid Heritage, Ratanada, Jodhpur.',
      landmark: 'Umaid Heritage.',
      city: 'Jodhpur',
      state: 'Rajasthan',
      mobileNumber: '1011121314',
    ),
  ];
  List<OrderEntity> orders = [
    OrderEntity(
    address: addresses[0], 
    orderID:'#123', 
    products: [OrderProductEntity(product: products[0], quantity: 2)], 
    dateTime: DateTime.now(), 
    total: 200, 
    subtotal: 20,
    deliveryFee: 0, 
    status: 'Active'), 
    OrderEntity(
    address:addresses[1], 
    orderID:'#456', 
    products: [OrderProductEntity(product: products[1], quantity: 1)], 
    dateTime: DateTime.now(), 
    total: 300, 
    subtotal: 30,
    deliveryFee: 40, 
    status: 'Shipped'),
    OrderEntity(
    address: addresses[2], 
    orderID:'#789', 
    products: [OrderProductEntity(product: products[2], quantity: 2)], 
    dateTime: DateTime.now(), 
    total: 200, 
    subtotal: 20,
    deliveryFee: 0, 
    status: 'Delivered')

    
  ];
  List<FAQEntity> faqs = [
    FAQEntity(
      question: 'Question 1', 
      answer:"Answer 1", 
      questionID: '#abc'),
    FAQEntity(
      questionID: 'def',
      question: 'Question 2',
      answer:"Answer 2"),
    FAQEntity(
      questionID: 'ghi',
      question: 'Question 3', 
      answer:"Answer 3"),
    ];
  
}