import 'dart:async';
// ignore: import_of_legacy_library_into_null_safe
import 'package:get/get.dart';

import 'product.dart';

class FilterController extends GetxController {
  final chosen1 = true.obs;
  final chosen2 = true.obs;
  final chosen3 = true.obs;
  final chosen4 = true.obs;
}

class StoreController extends GetxController {
  var products = <Product>[].obs;
  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var productResult = [
      Product(
          pId: 1,
          pName: 'first',
          pType: 'fuck',
          pImage: 'hy',
          pPrice: '100',
          pOldPrice: '200',
          pDescription: 'khaa',
          pQuantity: '5'),
      Product(
          pId: 2,
          pName: 'second',
          pType: 'fuck',
          pImage: 'hy',
          pPrice: '200',
          pOldPrice: '300',
          pDescription: 'khaa',
          pQuantity: '5'),
      Product(
          pId: 3,
          pName: 'third',
          pType: 'fuck',
          pImage: 'hy',
          pPrice: '300',
          pOldPrice: '400',
          pDescription: 'khaa',
          pQuantity: '5'),
      Product(
          pId: 4,
          pName: 'fourth',
          pType: 'fuck',
          pImage: 'hy',
          pPrice: '400',
          pOldPrice: '500',
          pDescription: 'khaa',
          pQuantity: '5'),
      Product(
          pId: 5,
          pName: 'fifth',
          pType: 'fuck',
          pImage: 'hy',
          pPrice: '600',
          pOldPrice: '700',
          pDescription: 'khaa',
          pQuantity: '5'),
      Product(
          pId: 6,
          pName: 'fifth',
          pType: 'fuck',
          pImage: 'hy',
          pPrice: '800',
          pOldPrice: '900',
          pDescription: 'khaa',
          pQuantity: '5')
    ];
    products.assignAll(productResult);
  }
}
