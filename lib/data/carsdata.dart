import 'package:first_app/model/carsmodel.dart';

List<Map<String, dynamic>> items2 = [
  {
    "brand": "Mercedes",
    "country": "germany",
    "image":
        "https://logowik.com/content/uploads/images/mercedes-benz-3d-star7819.logowik.com.webp",
    "flag": "https://cdn.countryflags.com/thumbs/germany/flag-round-250.png",
  },
  {
    "brand": "BMW",
    "country": "germany",
    "image": "https://logowik.com/content/uploads/images/398_bmw.jpg",
    "flag": "https://cdn.countryflags.com/thumbs/germany/flag-round-250.png",
  },
  {
    "brand": "Audi",
    "country": "germany",
    "image":
        "https://logowik.com/content/uploads/images/audi-line-black5817.logowik.com.webp",
    "flag": "https://cdn.countryflags.com/thumbs/germany/flag-round-250.png",
  },
  {
    "brand": "Toyota",
    "country": "japan",
    "image": "https://logowik.com/content/uploads/images/647_toyota.jpg",
    "flag": "https://cdn.countryflags.com/thumbs/japan/flag-round-250.png",
  },
  {
    "brand": "Honda",
    "country": "japan",
    "image":
        "https://logowik.com/content/uploads/images/honda5836.logowik.com.webp",
    "flag": "https://cdn.countryflags.com/thumbs/japan/flag-round-250.png",
  },
  {
    "brand": "Ford",
    "country": "usa",
    "image":
        "https://logowik.com/content/uploads/images/ford2356.logowik.com.webp",
    "flag":
        "https://cdn.countryflags.com/thumbs/united-states-of-america/flag-round-250.png",
  },
  {
    "brand": "Chevrolet",
    "country": "usa",
    "image": "https://logowik.com/content/uploads/images/969_chevrolet.jpg",
    "flag":
        "https://cdn.countryflags.com/thumbs/united-states-of-america/flag-round-250.png",
  },
  {
    "brand": "Nissan",
    "country": "japan",
    "image": "https://logowik.com/content/uploads/images/607_nissan_logo.jpg",
    "flag": "https://cdn.countryflags.com/thumbs/japan/flag-round-250.png",
  },
];
List<CarsModel> carsData2 =
    items2.map((item) => CarsModel.fromMap(item)).toList();
