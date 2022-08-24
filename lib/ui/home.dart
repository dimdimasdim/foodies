import 'package:flutter/material.dart';
import 'package:foodies/widget/header_info.dart';
import 'package:foodies/widget/home_toolbar.dart';
import 'package:foodies/widget/item_banner.dart';
import 'package:foodies/widget/item_category.dart';
import 'package:foodies/widget/item_food.dart';

import '../model/category.dart';
import '../model/food.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const HomeToolbar(),
            const SizedBox(
              height: 24,
            ),
            Container(
              height: 240,
              child: const BannerItem(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Card(
                elevation: 2,
                shadowColor: Colors.indigoAccent,
                child: ListTile(
                  trailing: Icon(Icons.chevron_right_rounded),
                  leading: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.pin_drop,
                        color: Colors.amber,
                      )
                    ],
                  ),
                  title: const Text(
                    'Your Delivery Address',
                    style: TextStyle(fontSize: 11),
                  ),
                  subtitle: const Text(
                    'Perumahan Griya Melati Mas Ext',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            HeaderInfo(title: 'Category'),
            SizedBox(
              height: 60.0,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: categoriesData.length,
                itemBuilder: (BuildContext context, int index) {
                  final Category data = categoriesData[index];
                  return ItemCategory(
                      name: data.name, icon: data.icon, color: data.color);
                },
              ),
            ),
            HeaderInfo(title: 'Nearby Food'),
            SizedBox(
              height: 400,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: foodies.length,
                itemBuilder: (BuildContext context, int index) {
                  final Food data = foodies[index];
                  return ItemFood(food: data);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
