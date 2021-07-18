class CatalogModel {
  static final items = [
    Item(
        id: 110,
        name: "Iphone 12 pro max",
        desc: "Apple 12 generation",
        price: 999,
        color: "#33505a",
        image:
            "https://www.etoren.com/upload/images/0.27011100_1608703684_apple-iphone-12-pro-max-5g-a2412-dual-sim-128gb-silver.jpg")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
