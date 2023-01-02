import 'package:freezed_annotation/freezed_annotation.dart';
part 'house.freezed.dart';

@freezed
class House with _$House {
  factory House({
    String? img,
    String? star,
    String? title,
    String? pricePerDay,
    String? location,
    String? rooms,
    String? area,
  }) = _House;
}

List<House> houseItems = [
  House(
      title: "City Night House",
      area: "250 ms",
      rooms: "5 Rooms",
      location: "Bowler Str. N19",
      pricePerDay: "\$450",
      star: "5.0",
      img:
          "https://cdn.pixabay.com/photo/2017/06/16/15/58/luxury-home-2409518_1280.jpg"),
  House(
      title: "City Night House",
      area: "250 ms",
      rooms: "5 Rooms",
      location: "Bowler Str. N19",
      pricePerDay: "\$450",
      star: "4.9",
      img:
          "https://cdn.pixabay.com/photo/2017/06/17/12/59/luxury-home-2412145_1280.jpg"),
  House(
      title: "City Night House",
      area: "250 ms",
      rooms: "5 Rooms",
      location: "Bowler Str. N19",
      pricePerDay: "\$450",
      star: "4.7",
      img:
          "https://cdn.pixabay.com/photo/2018/07/08/18/25/lake-geneva-3524431_1280.jpg"),
  House(
      title: "City Night House",
      area: "250 ms",
      rooms: "5 Rooms",
      location: "Bowler Str. N19",
      pricePerDay: "\$450",
      star: "4.2",
      img:
          "https://cdn.pixabay.com/photo/2015/10/06/06/01/monserrate-973935_1280.jpg"),
];
