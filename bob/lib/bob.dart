class Bob {
  String response(String message) {
    message = message.trim();

    bool saidNothing = message.isEmpty;

    // wasShouting needs some RegExp() code to function properly
    bool wasShouting = message.endsWith('!');
    bool askedAQuestion = message.endsWith('?');

    if (saidNothing) {
      return 'Fine. Be that way!';
    } else if (wasShouting && askedAQuestion) {
      return "Calm down, I know what I'm doing!";
    } else if (wasShouting) {
      return 'Whoa, chill out!';
    } else if (askedAQuestion) {
      return 'Sure.';
    }
    return 'Whatever.';
  }
}
