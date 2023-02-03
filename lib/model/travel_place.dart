import 'package:flutter/rendering.dart';

class Place{
  String name;
  String addrss;
  String img1;

  Place(this.name,this.addrss,this.img1);

  static List<Place> generatedPlace(){
    return[
      Place('Jahajmari', 'Jugikhali', 'images/ho7.jpg'),
      Place('BaganBari', 'Satkhira', 'images/ho8.jpg'),
      Place('Baridhara', 'Dhaka', 'images/ho1.jpg')
    ];
  }
}