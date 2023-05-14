import 'package:flutter/cupertino.dart';
import '../model/modelprovider.dart';

class PetProvider extends ChangeNotifier
{
  List<PetModel> petinfo =[
    PetModel(name: "Afghan Hound",rate: 7000,image: "assets/images/1.jpg"),
    PetModel(name: "Pharaoh Hound",rate: 7500,image: "assets/images/2.jpg"),
    PetModel(name: "Dogo Argentino",rate: 8000,image: "assets/images/3.jpg"),
    PetModel(name: "Canadian Eskimo Dog",rate: 8750,image: "assets/images/4.jpg"),
    PetModel(name: "Rottweiler",rate: 9000,image: "assets/images/5.jpg"),
    PetModel(name: "Azawakh ",rate: 9500,image: "assets/images/6.jpg"),
    PetModel(name: "Tibetan Mastiff",rate: 10000,image: "assets/images/7.jpg"),
    PetModel(name: "Chow Chow",rate: 11000,image: "assets/images/8.jpg"),
    PetModel(name: "Löwchen",rate: 12000,image: "assets/images/9.jpg"),
    PetModel(name: "Samoyed",rate: 14000,image: "assets/images/10.jpg"),
  ];
}