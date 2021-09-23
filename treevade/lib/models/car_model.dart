class Car {
  final String name;
  final String price;
  final String rating;
  final String address;
  final String imgUrl;
  final List<String> tags;
  final List<String> type;
  final bool isVerified;

  Car(
      {required this.name,
      required this.price,
      required this.rating,
      required this.address,
      required this.imgUrl,
      required this.tags,
      required this.type,
      required this.isVerified});
}

Car lamborghini = Car(
  name: "Lamborghini Diablo",
  address: "8342 North Brandywine Rd. West Babylon, NY 11704",
  imgUrl: "assets/cars/car1.jpg",
  price: "\$192,349",
  rating: "10/31",
  tags: ["On Sale", "Instalment"],
  type: ["buy", "sell"],
  isVerified: false
);

Car ford = Car(
  name: "Ford Raptor",
  address: "697 Applegate Ave. Brandon, FL 33510",
  imgUrl: "assets/cars/car2.jpg",
  price: "\$53,455",
  rating: "12/31",
  tags: ["On Sale", "Instalment"],
  type: ["buy", "rent"],
  isVerified: true,
);

Car ferrari = Car(
  name: "Ferrari Testarossa",
  address: "598 Cedarwood St. Atwater, CA 95301",
  imgUrl: "assets/cars/car3.jpg",
  price: "\$153,055",
  rating: "18/31",
  tags: ["On Sale", "Instalment"],
  type: ["buy", "rent", "sell"],
  isVerified: false
);

Car porsche = Car(
  name: "Porsche 911 Carrera",
  address: "91 E. Cleveland Avenue Midland, MI 48640",
  imgUrl: "assets/cars/car4.jpg",
  price: "\$113,850",
  rating: "13/31",
  tags: ["On Sale", "Instalment"],
  type: ["buy", "rent"],
  isVerified: true
);

Car jensen = Car(
  name: "Jensen Interceptor",
  address: "165 South Cherry Ave. Beckley, WV 25801",
  imgUrl: "assets/cars/car5.jpg",
  price: "\$123,355",
  rating: "31/31",
  tags: ["On Sale", "Instalment"],
  type: ["sell", "rent"],
  isVerified: true
);

List<Car> carList = [lamborghini, ford, ferrari, porsche, jensen];
