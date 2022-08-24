import 'package:flutter/material.dart';
import 'package:foodies/gen/assets.gen.dart';

import '../model/menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 1.0,
      ),
      body: Container(
        color: Colors.white54,
        child: Column(
          children: [
            const SizedBox(
              height: 16.0,
            ),
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 50,
                    child: CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage(Assets.images.dimas.path),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "Dimas Prakoso",
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 16.0),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  const Text(
                    "\"Stay Hungry Stay Foolish\" - Steve Jobs",
                    style: TextStyle(fontStyle: FontStyle.italic),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                shrinkWrap: true,
                itemCount: menus.length,
                itemBuilder: (BuildContext context, int index) {
                  final String menu = menus[index];
                  return Card(
                    elevation: 0,
                    child: Center(
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                          side:
                              const BorderSide(color: Colors.black12, width: 1),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        title: Text(menu),
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(menu),
                            duration: const Duration(milliseconds: 200),
                          ));
                        },
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
