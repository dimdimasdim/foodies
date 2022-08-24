import 'package:flutter/material.dart';

import '../model/food.dart';

class DetailFoodPage extends StatefulWidget {
  Food food;

  DetailFoodPage({Key? key, required this.food}) : super(key: key);

  @override
  State<DetailFoodPage> createState() => _DetailFoodPageState();
}

class _DetailFoodPageState extends State<DetailFoodPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              backgroundColor: Colors.black,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  titlePadding: const EdgeInsets.all(16),
                  title: Text(widget.food.name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        shadows: [
                          Shadow(
                            color: Colors.black,
                            blurRadius: 12.0,
                            offset: Offset(-3.0, 3.0),
                          ),
                        ],
                      )),
                  background: Image.asset(
                    widget.food.image,
                    fit: BoxFit.fitWidth,
                  )),
              actions: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        widget.food.isFavorite = !widget.food.isFavorite;
                      });
                    },
                    icon: Icon(
                      widget.food.isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: Colors.red,
                    ))
              ],
            ),
            SliverPersistentHeader(
              delegate: _SliverAppBarDelegate(
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BoxInfo(content: widget.food.chef, icon: Icons.person,type: 'Chef', padding: 8.0),
                            BoxInfo(content: widget.food.price, icon: Icons.monetization_on_outlined,type: 'Price', padding: 8.0),
                            BoxInfo(content: widget.food.rating, icon: Icons.star, type: 'Rate', padding: 8.0)
                          ],),
                      ],
                    ),
                  )
              ),
              pinned: true,
            ),
          ];
        },
        body: Container(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Text(widget.food.desc),
        ),
      ),
    );
  }
}

class BoxInfo extends StatelessWidget {

  const BoxInfo({
    Key? key,
    required this.content,
    required this.icon,
    required this.type,
    required this.padding
  }) : super(key: key);

  final String content;
  final IconData icon;
  final double padding;
  final String type;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: Column(
          children: [
            Icon(icon, color: Colors.black,),
            const SizedBox(height: 4.0,),
            Text('$type\n$content', textAlign: TextAlign.center, style: TextStyle(fontSize: 12),)
          ],
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._container);

  final Container _container;

  @override
  double get minExtent => 80.0;
  @override
  double get maxExtent => 80.0;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      child: _container,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}