class ItemModel
{
  String name;
  String image;
  double price;
  List<ExtraModel> extras;

  ItemModel({
    required this.name,
    required this.image,
    required this.price,
    required this.extras,
  });
}

class ExtraModel
{
  String name;
  double price;

  ExtraModel({
    required this.name,
    required this.price
  });
}

class OrderModel
{
  String number;
  double price;
  List<ItemModel> items;

  OrderModel({
    required this.number,
    required this.price,
    required this.items,
  });
}

