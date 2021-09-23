

class Brand{
  String brand;
  String imageUrl;

  Brand({required this.brand, required this.imageUrl});
}

Brand bmw = Brand(brand: "BMW", imageUrl: "assets/car_logo/bmw.png");
Brand ferrari = Brand(brand: "Ferrari", imageUrl: "assets/car_logo/ferrari.png");
Brand ford = Brand(brand: "Ford", imageUrl: "assets/car_logo/ford.png");
Brand honda = Brand(brand: "Honda", imageUrl: "assets/car_logo/honda.png");
Brand hyundai = Brand(brand: "Hyundai", imageUrl: "assets/car_logo/hyundai.png");
Brand jaguar = Brand(brand: "Jaguar", imageUrl: "assets/car_logo/jaguar.png");


List<Brand>brandList = [bmw, ferrari, ford, honda, hyundai, jaguar,];
