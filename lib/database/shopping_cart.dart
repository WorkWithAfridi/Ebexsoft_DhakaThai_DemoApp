class Cart_Items{
  String title;
  String price;
  String imageUrl;

  Cart_Items(this.title, this.price, this.imageUrl);
}

List<Cart_Items> cart=[
  Cart_Items('Some item', '99.99', 'assets/images/roundpipes.jpg'),
  Cart_Items('Some item', '99.99', 'assets/images/banner/cart_img.png'),
  Cart_Items('Some item', '99.99', 'assets/images/roundpipes.jpg'),
];