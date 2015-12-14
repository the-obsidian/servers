# Customize player joins
bind(player_join, null, null, @event) {
  @player = @event['player']

  # Modify the join message
  modify_event('join_message', _player_prefix(@player).@player.color('f').' joined')

  # Welcome the player
  runas('~console', '/title '.@player.' subtitle {text:"Welcome '.@player.'",color:yellow}')
  runas('~console', '/title '.@player.' title {text:"THE OBSIDIAN",color:white}')

  # Send MOTD
  tmsg(@player, colorize('Welcome to &6The Obsidian&f [&cobsidian.gg&f]'))
  tmsg(@player, colorize('    Map:    &9http://map.obsidian.gg'))
  tmsg(@player, colorize('    Forum: &9http://forum.obsidian.gg'))

  # Announce first-time players
  if (@event['first_login']) {
    broadcast(colorize('&6Please welcome '.@player.' to the server!'))
  }
}

# Customize player quits
bind(player_quit, null, null, @event) {
  @player = @event[player]
  modify_event('message', _player_prefix(@player).@player.color('f').' left')
}
