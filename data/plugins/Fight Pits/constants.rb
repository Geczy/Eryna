require 'java'
java_import 'org.apollo.game.model.Position'

# Set team numbers
PITS_LOBBY_TEAM = 0
PITS_GAME_TEAM = 1

# Set positions
PITS_LOBBY_ENTER_POSITION = Position.new 2399, 5175
PITS_LOBBY_LEAVE_POSITION = Position.new 2399, 5177
PITS_GAME_LEAVE_POSITION  = Position.new 2399, 5169
PITS_GAME_ENTER_POSITION  = Position.new 2399, 5158

# Set attributes
PITS_START_GAME = 1
PITS_END_GAME = 2
PITS_CHAMPION_UPDATE = 3
PITS_PLAYERS_COUNT_UPDATE = 4
PITS_TIME_UPDATE = 5