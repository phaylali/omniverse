import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:get/get.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:get_storage/get_storage.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:omniverse/themes.dart';
import 'cart.dart';
import 'error404.dart';
import 'profile.dart';
import 'store.dart';

final box = GetStorage();
void main() async {
  setPathUrlStrategy();
  runApp(Start());
}

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      unknownRoute: GetPage(name: '/ERROR404', page: () => ERROR404()),
      getPages: [
        GetPage(
            name: '/profile',
            page: () => Profile(),
            transition: Transition.zoom),
        GetPage(
            name: '/cart',
            page: () => ShoppingCart(),
            transition: Transition.zoom),
        GetPage(name: '/', page: () => Store(), transition: Transition.fade),
      ],
      theme: omniLightRedTheme(),
      darkTheme: omniDarkRedTheme(),
      title: "ARTIGIANATO DI FLAVIA",
      debugShowCheckedModeBanner: false,
      home: Store(),
    );
  }
}
