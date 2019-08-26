import './ShopItemType.model.dart';

class ShopItem {
  final String id;
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final ShopItemType type;
  bool isFav = false;

  ShopItem({
    this.id,
    this.name,
    this.description,
    this.imagePath,
    this.price,
    this.type,
    this.isFav,
  });
}
