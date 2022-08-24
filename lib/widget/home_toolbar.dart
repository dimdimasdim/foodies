import 'package:flutter/material.dart';

class HomeToolbar extends StatelessWidget {
  const HomeToolbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
          child: SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Hallo Dimas!",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text("It's launch time")
                  ],
                ),
                const Icon(Icons.notifications_none_rounded, color: Colors.black,)
              ],
            ),
          ),
        ));
  }
}