import 'package:flame/components.dart';
import 'package:space_shooter/game/space_shooter_game.dart';

class Enemy extends SpriteAnimationComponent
    with HasGameReference<SpaceShooterGame> {
  static const enemySize = 50.0;

  Enemy({super.position})
      : super(
          size: Vector2.all(enemySize),
          anchor: Anchor.center,
        );

  @override
  Future<void> onLoad() async {
    await super.onLoad();

    animation = await game.loadSpriteAnimation(
      'enemy.png',
      SpriteAnimationData.sequenced(
        amount: 4,
        stepTime: .2,
        textureSize: Vector2.all(16),
      ),
    );
  }

  @override
  void update(double dt) {
    super.update(dt);

    position.y += dt * 250;

    if (position.y > game.size.y) {
      removeFromParent();
    }
  }
}
