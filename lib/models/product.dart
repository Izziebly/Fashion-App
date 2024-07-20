class Product {
  Product({
    required this.id,
    required this.category,
    required this.title,
    required this.imageAsset,
    required this.price,
    required this.sizes,
    required this.quantity,
  });

  final String id;
  final String category;
  final String title;
  final String imageAsset;
  final int price;
  final List<String> sizes;
  int quantity;
}

final List<Product> all = [
  Product(
    id: 'p1',
    category: 'Gowns',
    title: 'Red Gown',
    price: 200,
    imageAsset: 'assets/images/gown1.webp',
    sizes: ['M', 'L', 'XL', 'XXL'],
    quantity: 1,
  ),
  Product(
    id: 'p2',
    category: 'Gowns',
    title: 'Rose Gown',
    price: 200,
    imageAsset: 'assets/images/gown2.webp',
    sizes: ['M', 'L', 'XL', 'XXL'],
    quantity: 1,
  ),
  Product(
    id: 'p3',
    category: 'Gowns',
    title: 'Blue Gown',
    price: 100,
    imageAsset: 'assets/images/gown3.webp',
    sizes: ['M', 'L', 'XL', 'XXL'],
    quantity: 1,
  ),
  Product(
    id: 'p4',
    category: 'Gowns',
    title: 'Blue-ish Gown',
    price: 300,
    imageAsset: 'assets/images/gown4.webp',
    sizes: ['M', 'L', 'XL', 'XXL'],
    quantity: 1,
  ),
  Product(
    id: 'p5',
    category: 'Jackets',
    title: 'Male Jacket',
    price: 250,
    imageAsset: 'assets/images/jack1.webp',
    sizes: ['M', 'L', 'XL', 'XXL'],
    quantity: 1,
  ),
  Product(
    id: 'p6',
    category: 'Jackets',
    title: 'Female Jacket',
    price: 200,
    imageAsset: 'assets/images/jack2.webp',
    sizes: ['M', 'L', 'XL', 'XXL'],
    quantity: 1,
  ),
  Product(
    id: 'p7',
    category: 'Shirt',
    title: 'White Shirt',
    price: 200,
    imageAsset: 'assets/images/shirt1.webp',
    sizes: ['M', 'L', 'XL', 'XXL'],
    quantity: 1,
  ),
  Product(
    id: 'p8',
    category: 'Shirt',
    title: 'Blue Shirt',
    price: 200,
    imageAsset: 'assets/images/shirt2.webp',
    sizes: ['M', 'L', 'XL', 'XXL'],
    quantity: 1,
  ),
  Product(
    id: 'p9',
    category: 'Pants',
    title: 'Male Pant',
    price: 200,
    imageAsset: 'assets/images/pant1.webp',
    sizes: ['M', 'L', 'XL', 'XXL'],
    quantity: 1,
  ),
  Product(
    id: 'p10',
    category: 'Pants',
    title: 'Female Pant',
    price: 200,
    imageAsset: 'assets/images/pant2.webp',
    sizes: ['M', 'L', 'XL', 'XXL'],
    quantity: 1,
  ),
];

final List<Product> gowns = [
  Product(
    id: 'p1',
    category: 'Gowns',
    title: 'Red Gown',
    price: 200,
    imageAsset: 'assets/images/gown1.webp',
    sizes: ['M', 'L', 'XL', 'XXL'],
    quantity: 1,
  ),
  Product(
    id: 'p2',
    category: 'Gowns',
    title: 'Rose Gown',
    price: 200,
    imageAsset: 'assets/images/gown2.webp',
    sizes: ['M', 'L', 'XL', 'XXL'],
    quantity: 1,
  ),
  Product(
    id: 'p3',
    category: 'Gowns',
    title: 'Blue Gown',
    price: 100,
    imageAsset: 'assets/images/gown3.webp',
    sizes: ['M', 'L', 'XL', 'XXL'],
    quantity: 1,
  ),
  Product(
    id: 'p4',
    category: 'Gowns',
    title: 'Blue-ish Gown',
    price: 300,
    imageAsset: 'assets/images/gown4.webp',
    sizes: ['M', 'L', 'XL', 'XXL'],
    quantity: 1,
  ),
];
final List<Product> jackets = [
  Product(
    id: 'p5',
    category: 'Jackets',
    title: 'Male Jacket',
    price: 250,
    imageAsset: 'assets/images/jack1.webp',
    sizes: ['M', 'L', 'XL', 'XXL'],
    quantity: 1,
  ),
  Product(
    id: 'p6',
    category: 'Jackets',
    title: 'Female Jacket',
    price: 200,
    imageAsset: 'assets/images/jack2.webp',
    sizes: ['M', 'L', 'XL', 'XXL'],
    quantity: 1,
  ),
];

final List<Product> shirts = [
  Product(
    id: 'p7',
    category: 'Shirt',
    title: 'White Shirt',
    price: 200,
    imageAsset: 'assets/images/shirt1.webp',
    sizes: ['M', 'L', 'XL', 'XXL'],
    quantity: 1,
  ),
  Product(
    id: 'p8',
    category: 'Shirt',
    title: 'Blue Shirt',
    price: 200,
    imageAsset: 'assets/images/shirt2.webp',
    sizes: ['M', 'L', 'XL', 'XXL'],
    quantity: 1,
  ),
];

final List<Product> pants = [
  Product(
    id: 'p9',
    category: 'Pants',
    title: 'Male Pant',
    price: 200,
    imageAsset: 'assets/images/pant1.webp',
    sizes: ['M', 'L', 'XL', 'XXL'],
    quantity: 1,
  ),
  Product(
    id: 'p10',
    category: 'Pants',
    title: 'Female Pant',
    price: 200,
    imageAsset: 'assets/images/pant2.webp',
    sizes: ['M', 'L', 'XL', 'XXL'],
    quantity: 1,
  ),
];
