import 'package:flame/components.dart';
import 'package:space_shooter/game/space_shooter_game.dart';

class Bullet extends SpriteAnimationComponent
    with HasGameRef<SpaceShooterGame> {
  Bullet({super.position})
      : super(
          size: Vector2(25, 50),
          anchor: Anchor.center,
        );

  @override
  Future<void> onLoad() async {
    await super.onLoad();

    animation = await gameRef.loadSpriteAnimation(
      'bullet.png',
      SpriteAnimationData.sequenced(
        amount: 4,
        stepTime: .2,
        textureSize: Vector2(8, 16),
      ),
    );
  }

  @override
  void update(double dt) {
    super.update(dt);

    position.y += dt * -500;

    if (position.y < -height) {
      removeFromParent();
    }
  }
}