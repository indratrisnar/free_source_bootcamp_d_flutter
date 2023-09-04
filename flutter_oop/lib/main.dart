import 'package:flutter/material.dart';
import 'package:flutter_oop/Area_of_circle.dart';
import 'package:flutter_oop/animal.dart';
import 'package:flutter_oop/bird.dart';

void main() {
  // Encapsulation: _pi
  debugPrint('${'-' * 10}\nEncapsulation:');
  AreaofCirlce area = AreaofCirlce();
  area.r = 7;
  area.calculate();

  debugPrint('${'-' * 10}\nInheritance:');
  Eagle eagle = Eagle();
  eagle.fly();

  debugPrint('${'-' * 10}\nPolymorphism:');
  Shark shark = Shark();
  shark.eat();
  shark.move();

  Tiger tiger = Tiger();
  tiger.eat();
  tiger.move();
}
