import 'package:fear_of_god/models/ShopItem.model.dart';
import 'package:fear_of_god/pages/ProductDetailsPage.dart';
import 'package:flutter/material.dart';

class ShopListItem extends StatelessWidget {
  final ShopItem item;
  const ShopListItem({this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context, rootNavigator: true)
            .pushNamed(ProductDetailsPage.routeName, arguments: item);
      },
      child: Container(
        key: Key(item.id),
        width: 120,
        margin: EdgeInsets.only(right: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              item.imagePath,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                item.name,
                softWrap: true,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              '€${item.price}',
              softWrap: true,
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.start,
            )
          ],
        ),
      ),
    );
  }
}
