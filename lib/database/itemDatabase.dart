class Filter{
  String name;

  Filter(this.name);

}
List<Filter> filters=[
  Filter('Filter A'),
  Filter('Filter B'),
  Filter('Filter C'),
  Filter('Filter D'),
  Filter('Filter E'),
  Filter('Filter C'),
  Filter('Filter D'),
  Filter('Filter E'),
];

class Item{
  String name;
  String id;
  String price;
  String imageUrl;

  Item(this.name, this.id, this.price, this.imageUrl);
}
List<Item> ItemsForFabs=[
  Item('Product A', 'A', '111', 'assets/images/product_images/product_a.png'),
  Item('Product B', 'A', '111', 'assets/images/product_images/product_b.png'),
  Item('Product C', 'A', '111', 'assets/images/product_images/product_c.png'),
  Item('Product D', 'A', '111', 'assets/images/product_images/product_d.png'),
  Item('Product E', 'A', '111', 'assets/images/product_images/product_e.png'),
];