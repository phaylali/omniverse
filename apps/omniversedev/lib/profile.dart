import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
  }) : super(key: key);

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
                              "PROFILE",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "subtitle",
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
                            child: Icon(Feather.arrow_left),
                            onPressed: () {
                              Get.back();
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
                            child: Icon(Feather.sun),
                            onPressed: () {
                              Get.changeThemeMode(Get.isDarkMode
                                  ? ThemeMode.light
                                  : ThemeMode.dark);
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
                            child: Icon(Feather.settings),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
            ],
          )),
        ),
      ),
    );
  }
}
