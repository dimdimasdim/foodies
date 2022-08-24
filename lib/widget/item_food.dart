import 'package:flutter/material.dart';
import 'package:foodies/model/food.dart';
import 'package:foodies/ui/detail_food.dart';

class ItemFood extends StatelessWidget {
  Food food;

  ItemFood({required this.food});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 32),
      width: MediaQuery.of(context).size.width * 0.6,
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => DetailFoodPage(food: food,)));
        },
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8)),
                      child: Image.asset(
                        food.image,
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      )),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(131, 127, 118, 0.4)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Color.fromRGBO(249, 179, 76, 1),
                                size: 12,
                              ),
                              Text(
                                food.rating,
                                style:
                                    const TextStyle(color: Colors.white, fontSize: 8),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  food.name,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.monetization_on_outlined,
                          color: Color.fromRGBO(253, 93, 56, 1),
                          size: 16,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          food.price,
                          style: const TextStyle(color: Colors.black, fontSize: 14),
                        )
                      ],
                    ),
                    Icon(
                      food.isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: Colors.red,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      food.chef,
                      style: const TextStyle(fontSize: 10, color: Colors.blueGrey),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
