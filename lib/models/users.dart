class User {
  String? name;
  String? image;
  String? address;
  double? rating;
  bool isOnline;
  bool istopCustomer;
  User({this.name, this.address, this.image, this.rating, this.isOnline = false, this.istopCustomer = false});

  List<User> get getUserList => [
        User(name: 'Shrish Malla', address: "MaitiDevi,kathmandu", rating: 4),
        User(name: 'Prakash Regmi', address: "MaitiDevi,kathmandu", rating: 3.5, isOnline: true),
        User(name: 'Prakash Regmi', address: "kathmandu", rating: 3.5, isOnline: false),
        User(name: 'Prakash Regmi', address: "kathmandu", rating: 3.5, isOnline: true, istopCustomer: true),
      ];
}
