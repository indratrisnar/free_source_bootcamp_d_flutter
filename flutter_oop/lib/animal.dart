abstract class Animal {
  void eat();
  void move();
}

class Shark implements Animal {
  @override
  void eat() {
    print('makanan favorit hiu adalah paus');
  }

  @override
  void move() {
    print('hiu bergerak menggunakan sirip');
  }
}

class Tiger implements Animal {
  @override
  void eat() {
    print('makanan favorit harimau adalah rusa');
  }

  @override
  void move() {
    print('harimau bergerak menggunakan kaki');
  }
}
