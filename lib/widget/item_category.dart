import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodies/gen/assets.gen.dart';

class ItemCategory extends StatelessWidget {
  String name;
  Color color;
  String icon;

  ItemCategory({Key? key, required this.name, required this.icon, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      child: GestureDetector(
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(name),
            duration: const Duration(milliseconds: 200),
          ));
        },
        child: Card(
          child: ListTile(
            tileColor: color,
            textColor: Colors.black,
            trailing:
            Image.asset(
              icon,
              width: 28,
              height: 28,
            )
            ,
            title: Text(
              name,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
