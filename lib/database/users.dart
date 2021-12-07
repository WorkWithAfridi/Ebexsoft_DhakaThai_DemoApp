class User {
  String name;
  String id;
  String profilePicture;
  String phoneNumber;
  User(this.name, this.id, this.profilePicture, this.phoneNumber);
}

class Admin {
  User user;
  String role;

  Admin(this.user, this.role);
}

class Dealer {
  User user;
  String userDetails;
  String password;
  int numberOfTimesPasswordChanged;//change after first login
  String totalTransactionAmount;
  String attachInvoice;
  List<Purchase> listOfPurchases;

  Dealer(this.user, this.userDetails, this.password,  this.numberOfTimesPasswordChanged,
      this.totalTransactionAmount, this.attachInvoice, this.listOfPurchases);

//TODO: Request new fabId from Dealer
}

class Fabricator{
  User user;
  String region;
  String details;
  String password;
  int numberOfTimesPasswordChanged;
  int points;
  List<Purchase> listOfPurchases;

  Fabricator(this.user, this.region, this.details, this.password,
      this.numberOfTimesPasswordChanged, this.points, this.listOfPurchases);

}

class Compllaint{
  String title;
  String description;
  String imageUrl;

  Compllaint(this.title, this.description, this.imageUrl);

}
class Purchase{
  String id;
  String title;
  String amountInTaka;
  Purchase(this.id, this.title, this.amountInTaka);
}

class DummyUser{
  String id;
  String password;

  DummyUser(
      this.id, this.password);
}
List<DummyUser> dealerDatabase=[
  DummyUser('dealer', 'dealer'),
];
List<DummyUser> fabricatorDatabase=[
  DummyUser('fab', 'fab'),
];
List<DummyUser> adminDatabase=[
  DummyUser('admin', 'admin'),
];