import 'dart:ui';
import 'package:accessories/logic/productsController.dart';
import 'package:accessories/pages/error404.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_icons/flutter_icons.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:get/get.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String id = Get.parameters['id']!;
    final FirebaseFirestore firestoro = FirebaseFirestore.instance;
    //Get.lazyPut(() => CountController());

    return FutureBuilder<DocumentSnapshot>(
        future: firestoro.collection('products').doc(id).get(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text("Something went wrong");
          }
          if (snapshot.connectionState == ConnectionState.done) {
            DocumentSnapshot? d = snapshot.data;

            if (d!.exists) {
              Map<String?, dynamic>? data = d.data();
              return SafeArea(
                child: Scaffold(
                  body: Center(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: ListView(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 100,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                shape:
                                    MaterialStateProperty.all<OutlinedBorder>(
                                        StadiumBorder())),
                            child: Center(
                                child: Text(
                              '${data['name']}',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed: () => GetPlatform.isMobile
                              ? Get.defaultDialog(
                                  title: 'Zoom In Product',
                                  content: Expanded(
                                    child: InteractiveViewer(
                                      child: Center(
                                          child: Image.network(
                                              '${data['image']}')),
                                    ),
                                  ))
                              : null,
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(30)))),
                          child:
                              Center(child: Image.network('${data['image']}')),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 100,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                shape:
                                    MaterialStateProperty.all<OutlinedBorder>(
                                        StadiumBorder())),
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  '${data['oldPrice']}' + ' \$',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.lineThrough),
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'Price',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '${data['price']}' + ' \$',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'Quantity',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '${data['quantity']}' + ' Units',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                GetBuilder<CountController>(
                                  init: CountController(),
                                  builder: (_) {
                                    return Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ElevatedButton(
                                          style: ButtonStyle(
                                              shape: MaterialStateProperty.all<
                                                      OutlinedBorder>(
                                                  StadiumBorder())),
                                          onPressed: () => _.counter == 0
                                              ? null
                                              : _.increment(),
                                          child: Text(
                                            'Buy ' + "${_.counter}",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            IconButton(
                                              icon: Icon(Feather.arrow_up),
                                              onPressed: () => _.increment(),
                                            ),
                                            IconButton(
                                                icon: Icon(Feather.arrow_down),
                                                onPressed: () => _.decrement()),
                                          ],
                                        )
                                      ],
                                    );
                                  },
                                ),
                              ],
                            )),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 500,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                shape:
                                    MaterialStateProperty.all<OutlinedBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30)))),
                            child: Center(
                                child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'More Details',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Type : ${data['type']}',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Video : ',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    IconButton(
                                      icon: Icon(Feather.youtube),
                                      onPressed: () {},
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Description : ',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Expanded(
                                  child: Text(
                                    '${data['description']}',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            )),
                          ),
                        ),
                      ],
                    ),
                  )),
                ),
              );
            } else {
              return NoProduct();
            }
          }
          return SafeArea(
            child: Scaffold(
              body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: CircularProgressIndicator()),
              ),
            ),
          );
        });
  }
}
