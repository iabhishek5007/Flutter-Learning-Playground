// Define a class called Item
class Item {
  // Define the properties of the class
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  // Define a constructor that initializes the properties
  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });

  // Define a list of products using the Item class
  final products = [
    Item(
      id: "1",
      name: "name",
      desc: "this is desc",
      price: 200,
      color: "color",
      image: "link",
    ),
  ];
}
