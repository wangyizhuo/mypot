import 'package:built_collection/built_collection.dart';

/// Reference: http://www.playwerewolf.co/rules/roles/
enum Role {
  moderator,
  villager,
  werewolf,
  seer,
  witch,
  hunter,
}

class Seat {
  final String playerId;
  final Role role;

  Seat({String playerId, Role role})
      : this.playerId = playerId,
        this.role = role;
}

class Game {
  final String moderatorId;
  final int playerCount;
  final List<Seat> seats = [];
  BuiltMap<Role, int> gameSetup;

  Game({String moderatorId, int playerCount})
      : this.moderatorId = moderatorId,
        this.playerCount = playerCount;

  void init(Map<Role, int> gameSetup) {
    _checkPlayerCount(gameSetup);
    this.gameSetup = new BuiltMap<Role, int>(gameSetup);
  }

  void _checkPlayerCount(Map<Role, int> gameSetup) {
  }
}
