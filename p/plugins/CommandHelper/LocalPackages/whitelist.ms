# Kick users if they are not in the whitelist (join permission)
bind(player_join, null, null, @event) {
  @player = @event['player']
  if (!has_permission(@player, 'obsidian.join')) {
    pkick(@player, 'Please apply to the whitelist at obsidian.gg/whitelist')
  }
}
