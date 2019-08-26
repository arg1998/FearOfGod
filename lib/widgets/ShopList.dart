import 'package:fear_of_god/models/ShopItem.model.dart';
import 'package:fear_of_god/models/fake_data.dart';
import 'package:fear_of_god/widgets/ShopListItem.dart';

import '../models/ShopItemType.model.dart';
import 'package:flutter/material.dart';

class ShopList extends StatelessWidget {
  final ShopItemType type;
  const ShopList({this.type});

  String _getItemTypeString() {
    switch (type) {
      case ShopItemType.BOTTOM:
        return "bottom";
        break;
      case ShopItemType.TOP:
        return "top";
        break;
      case ShopItemType.DENIM:
        return "denim";
        break;
      case ShopItemType.FOOTWEAR:
        return "footwear";
        break;
      case ShopItemType.OUTERWEAR:
        return "outerwear";
        break;
      default:
        return null;
    }
  }

  List<ShopItem> get _items {
    return all_items.where((item) => item.type == type).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // color: Colors.green,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              _getItemTypeString().toUpperCase(),
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding:EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: _items.map((item) => ShopListItem(item: item)).toList(),
            ),
          )
        ],
      ),
    );
  }
}
