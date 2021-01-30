import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_icons/flutter_icons.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:get/get.dart';

import 'logic.dart';

class Store extends StatelessWidget {
  final fController = Get.put(FilterController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                    child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "ARTIGIANATO DI FLAVIA",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 30,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "by Fatima Zohra Ed Debi",
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 40,
                            width: 60,
                            child: ElevatedButton(
                              child: Icon(Feather.user),
                              onPressed: () {
                                Get.toNamed('/profile');
                              },
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 40,
                            width: 60,
                            child: ElevatedButton(
                              child: Icon(Feather.shopping_cart),
                              onPressed: () {
                                Get.toNamed('/cart');
                              },
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 40,
                            width: 60,
                            child: ElevatedButton(
                              child: Icon(Feather.filter),
                              onPressed: () {
                                Get.defaultDialog(
                                  title: "Filter Products",
                                  //titleStyle: TextStyle(color: Colors.red[400]),
                                  content: Column(
                                    children: [
                                      GetBuilder<FilterController>(
                                        builder: (f) {
                                          return Column(
                                            children: [
                                              CheckboxListTile(
                                                activeColor: Theme.of(context)
                                                    .accentColor,
                                                checkColor: Theme.of(context)
                                                    .scaffoldBackgroundColor,
                                                title: Text("NiggaTime",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyText2),
                                                value: f.chosen1.value,
                                                onChanged: (bool? value) {
                                                  f.chosen1.value = value;
                                                  //f.unchose(value);
                                                  f.update();
                                                },
                                              ),
                                              CheckboxListTile(
                                                activeColor: Theme.of(context)
                                                    .accentColor,
                                                checkColor: Theme.of(context)
                                                    .scaffoldBackgroundColor,
                                                title: Text("BigNiggaTime",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyText2),
                                                value: f.chosen2.value,
                                                onChanged: (bool? value) {
                                                  f.chosen2.value = value;
                                                  //f.unchose(value);
                                                  f.update();
                                                },
                                              ),
                                              CheckboxListTile(
                                                activeColor: Theme.of(context)
                                                    .accentColor,
                                                checkColor: Theme.of(context)
                                                    .scaffoldBackgroundColor,
                                                title: Text("ProNiggaTime",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyText2),
                                                value: f.chosen3.value,
                                                onChanged: (bool? value) {
                                                  f.chosen3.value = value;
                                                  //f.unchose(value);
                                                  f.update();
                                                },
                                              ),
                                              CheckboxListTile(
                                                activeColor: Theme.of(context)
                                                    .accentColor,
                                                checkColor: Theme.of(context)
                                                    .scaffoldBackgroundColor,
                                                title: Text("UltraNiggaTime",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyText2),
                                                value: f.chosen4.value,
                                                onChanged: (bool? value) {
                                                  //f.unchose(value);
                                                  f.chosen4.value = value;
                                                  f.update();
                                                },
                                              ),
                                              SizedBox(
                                                width: 500,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Expanded(
                                                      child: SizedBox(
                                                        height: 40,
                                                        child: ElevatedButton(
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceEvenly,
                                                            children: [
                                                              Icon(
                                                                  Feather.save),
                                                              Text(
                                                                "Save & Close",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        15,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              )
                                                            ],
                                                          ),
                                                          onPressed: () {
                                                            Get.toNamed('/cart',
                                                                preventDuplicates:
                                                                    false);
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Expanded(
                                                      child: SizedBox(
                                                        height: 40,
                                                        child: ElevatedButton(
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceEvenly,
                                                            children: [
                                                              Icon(Feather
                                                                  .x_circle),
                                                              Text(
                                                                "Dismiss",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        15,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              )
                                                            ],
                                                          ),
                                                          onPressed: () {
                                                            Get.back(
                                                                closeOverlays:
                                                                    true);
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
                SliverGrid(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 300,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 1),
                  delegate: SliverChildBuilderDelegate((context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 120,
                              width: 300,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                        OutlinedBorder>(StadiumBorder())),
                                child: Center(
                                    child: Image.network(
                                        "https://cdn.shopify.com/s/files/1/2260/2855/products/taboo-hoop-earrings-large.gold-plated.variant_1024x1024.png?v=1597369876")),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
