import 'package:art_ecommerce/entities/PaintingEntity.dart';
import 'package:art_ecommerce/journeys/FAQ/faq_screen.dart';
import 'package:art_ecommerce/journeys/auth/login_screen.dart';
import 'package:art_ecommerce/journeys/cart/cart_screen.dart';
import 'package:art_ecommerce/journeys/catalog/catalog_screen.dart';
import 'package:art_ecommerce/journeys/checkout/add_edit_address.dart';
import 'package:art_ecommerce/journeys/checkout/order_confirmation.dart';

import 'package:art_ecommerce/journeys/checkout/select_address.dart';
import 'package:art_ecommerce/journeys/history/order_history_screen.dart';
import 'package:art_ecommerce/journeys/home/home_page.dart';
import 'package:art_ecommerce/journeys/home/main_page_view.dart';
import 'package:art_ecommerce/journeys/product/product_screen.dart';
import 'package:art_ecommerce/journeys/profile/profile_screen.dart';
import 'package:art_ecommerce/journeys/search/search_page.dart';
import 'package:art_ecommerce/journeys/support/support_page.dart';
import 'package:art_ecommerce/journeys/support/acknowledgement_page.dart';
import 'package:art_ecommerce/models/models.dart';
import 'package:art_ecommerce/params/acknowledgement_page_params.dart';

import 'package:flutter/material.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('This is route: ${settings.name}');

    switch (settings.name) {
      case '/':
        return MainPageView.route();
      case MainPageView.routeName:
        return MainPageView.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case ProductScreen.routeName:
        return ProductScreen.route(Models.products[0]);
      case CartScreen.routeName:
        return CartScreen.route();
      case CatalogScreen.routeName:
        return CatalogScreen.route(settings.arguments);
      case ProfileScreen.routeName:
        return ProfileScreen.route();
      case LoginScreen.routeName:
        return LoginScreen.route();
      case OrderConfirmationScreen.routeName: 
        return OrderConfirmationScreen.route();
      case AddEditAddressScreen.routeName: 
        return AddEditAddressScreen.route();
      case SelectAddressScreen.routeName:
        return SelectAddressScreen.route(settings.arguments as bool);
      case SearchPage.routeName: 
        return SearchPage.route();
      case OrderHistory.routeName:
        return OrderHistory.route();
      case SupportPage.routeName: 
        return SupportPage.route();
      case FAQScreen.routeName: 
        return FAQScreen.route();
      case AcknowledgementPage.routeName: 
        return AcknowledgementPage.route(settings.arguments as AcknowledgementPageParams);
      default:
      
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: '/error'),
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text('Error'),
              ),
            ));
  }
}
