import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:space_shooter/assets/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.bullet).existsSync(), isTrue);
    expect(File(Images.enemy).existsSync(), isTrue);
    expect(File(Images.explosion).existsSync(), isTrue);
    expect(File(Images.game).existsSync(), isTrue);
    expect(File(Images.playerSprite).existsSync(), isTrue);
    expect(File(Images.player).existsSync(), isTrue);
    expect(File(Images.stars).existsSync(), isTrue);
    expect(File(Images.stars0).existsSync(), isTrue);
    expect(File(Images.stars1).existsSync(), isTrue);
    expect(File(Images.stars2).existsSync(), isTrue);
  });
}
