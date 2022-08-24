import 'package:flutter/material.dart';

class HeaderInfo extends StatelessWidget {
  String title;

  HeaderInfo({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 16, bottom: 16, top: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold),),
          const Text(
            'See All',
            style: TextStyle(
                color: Color.fromRGBO(253, 99, 63, 1),
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
