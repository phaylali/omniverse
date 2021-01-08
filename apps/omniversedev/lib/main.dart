import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'cart.dart';
import 'error404.dart';
import 'profile.dart';
import 'store.dart';
import 'themes.dart';

final box = GetStorage();
void main() async {
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
      theme: omniLightTheme(),
      darkTheme: omniDarkTheme(),
      title: "ARTIGIANATO DI FLAVIA",
      debugShowCheckedModeBanner: false,
      home: Store(),
    );
  }
}
