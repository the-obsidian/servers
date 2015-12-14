proc(_player_prefix, @player) {
  return(_group_prefix(pgroup(@player)[0]))
}

proc(_player_prefix_short, @player) {
  return(_group_prefix_short(pgroup(@player)[0]))
}

proc(_group_prefix_short, @group) {
  switch(@group) {
    case 'admin':
      return(color('3').'[A] '.color('f'))
    case 'moderator':
      return(color('2').'[M] '.color('f'))
    case 'guardian':
      return(color('2').'[G] '.color('f'))
    default:
      return('')
  }
}

proc(_group_prefix, @group) {
  switch(@group) {
    case 'admin':
      return(color('3').'[Admin] '.color('f'))
    case 'moderator':
      return(color('2').'[Moderator] '.color('f'))
    case 'guardian':
      return(color('2').'[Guardian] '.color('f'))
    default:
      return('')
  }
}
