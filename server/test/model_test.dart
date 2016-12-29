import "package:mypot_server/model.dart";
import "package:mypot_server/setup_generator.dart";
import "package:test/test.dart";


void main() {
  var setupForNine = SetupGenerator.generate(9);

  test('Game.init will keep setup', () {
    var game = new Game(moderatorId: "wyz", playerCount: 9);
    game.init(setupForNine);
    expect(game.gameSetup, isNotNull);
  });
}
