import 'game_object.dart';

class Obstacle extends GameObject {
  Obstacle(x, y) : super(x, y);

  void move() {
    print('Obstacle is moving to the left...');
  }

  @override
  void render() {
    print('Rendering obstacle at position ($x, $y)');
  }

  @override
  void update() {
    print(move);
  }
}
