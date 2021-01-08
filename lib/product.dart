// ignore: import_of_legacy_library_into_null_safe
import 'package:cloud_firestore/cloud_firestore.dart';

class ProductModel {
  late String id;
  late int price;
  late int oldPrice;
  late int quantity;
  late String name;
  late String description;
  late String reference;
  late String type;
  late String image;
  late String video;

  /*ProductModel(this.id, this.name, this.description, this.reference, this.type,
      this.image, this.price, this.oldPrice, this.quantity, this.video);*/

  ProductModel.fromDocumentSnapshot(DocumentSnapshot documentSnapshot) {
    id = documentSnapshot.id;
    reference = documentSnapshot.data()["reference"];
    name = documentSnapshot.data()["name"];
    price = documentSnapshot.data()["price"];
    oldPrice = documentSnapshot.data()["oldPrice"];
    description = documentSnapshot.data()["description"];
    type = documentSnapshot.data()["type"];
    quantity = documentSnapshot.data()["quantity"];
    image = documentSnapshot.data()["image"];
    video = documentSnapshot.data()["video"];
  }
}
