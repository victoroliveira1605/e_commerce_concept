class ProductItem {
  final String image, title, description;
  final double amount;
  final int review, uid;
  ProductItem({
    required this.uid,
    required this.image,
    required this.title,
    required this.amount,
    required this.description,
    required this.review,
  });
}

List<ProductItem> products = [
  ProductItem(
    uid: 1,
    title: "The original",
    amount: 8.99,
    image: "images/the_original.jpg",
    review: 32,
    description:
        "The one that started it all! Crisp shredded lettuce, fresh tomato, chopped onion, relish, crinkle-cut pickles, mustard & mayonnaise.",
  ),
  ProductItem(
    uid: 2,
    title: "Smoke house",
    amount: 6.69,
    image: "images/smoke_house.jpg",
    review: 32,
    description:
        "Thick-cut Applewood smoked bacon, crispy sourdough onion rings, Wisconsin Cheddar cheese & our special recipe Smoke House BBQ Ranch.",
  ),
  ProductItem(
    uid: 3,
    title: "Houston",
    amount: 11.19,
    image: "images/houston.jpg",
    review: 32,
    description:
        "Spicy jalapeños, Pepper Jack cheese, crisp leaf lettuce, fresh tomato & our Smokin’ Chipotle Ranch.",
  ),
  ProductItem(
    uid: 4,
    title: "Bacon cheddar",
    amount: 10.43,
    image: "images/bacon_cheddar.jpg",
    review: 32,
    description:
        "Thick-cut Applewood smoked bacon, Wisconsin Cheddar cheese, crisp leaf lettuce, fresh tomato, sliced onion & Special Sauce.",
  ),
  ProductItem(
    uid: 5,
    title: "Route 66",
    amount: 12.43,
    image: "images/route_66.jpg",
    review: 32,
    description:
        "Certified Angus Beef® patty covered with Swiss cheese, grilled mushrooms, caramelized onions, and mayonnaise on a brioche bun.",
  ),
  ProductItem(
    uid: 6,
    title: "Gardein",
    amount: 6.69,
    image: "images/gardein.jpg",
    review: 32,
    description:
        "Served with fresh tomato & crisp leaf lettuce on a whole wheat bun. ",
  ),
  ProductItem(
    uid: 7,
    title: "Rocket single",
    amount: 8.99,
    image: "images/rocket_single.jpg",
    review: 32,
    description:
        "Our signature burger includes Wisconsin Cheddar cheese, crisp leaf lettuce, fresh tomato, sliced onion & Special Sauce.",
  ),
];
