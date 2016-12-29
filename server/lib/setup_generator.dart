import "package:mypot_server/model.dart";

class SetupGenerator {
  static final _default9 = <Role, int>{
    Role.villager: 3,
    Role.werewolf: 3,
    Role.seer: 1,
    Role.witch: 1,
    Role.hunter: 1
  };

  static Map<Role, int> generate(int playerCount) {
    switch (playerCount) {
      case 9:
        return _default9;
      default:
        throw new ArgumentError('Unsupported player count: $playerCount');
    }
  }
}