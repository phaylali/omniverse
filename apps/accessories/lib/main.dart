import 'package:omniverse/error404.dart';
import 'package:omniverse/store.dart';
import 'package:omniverse/productPage.dart';
import 'package:omniverse/productsController.dart';
import 'package:omniverse/themes.dart';
import 'package:omniverse/cart.dart';

import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:get/get.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Get.put(ProductsController);
  await Firebase.initializeApp();
  runApp(Start());
}

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(
            name: '/',
            page: () => Store(
                  title: 'OMNIACCESSORIES',
                  subtitle: 'by Ayoub El Failali',
                )),
        //GetPage(name: '/profile', page: () => Profile()),
        GetPage(name: '/cart', page: () => ShoppingCart()),
        GetPage(name: '/Product', page: () => ProductPage()),
      ],
      unknownRoute: GetPage(name: '/error404', page: () => ERROR404()),
      theme: omniLightRedTheme(),
      darkTheme: omniDarkRedTheme(),
      navigatorKey: Get.key,
      themeMode: ThemeMode.system,
      title: "OMNIACCESSORIES",
      debugShowCheckedModeBanner: false,
      //home: Store(),
    );
  }
}
