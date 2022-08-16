class WordCount {
  Map<String, int> countWords(String string) {
    final Map<String, int> wordCountMap = {};
    Iterable<Match> matches =
        RegExp(r"(\w+(?:\'\w+)*)").allMatches(string.toLowerCase());
    for (Match item in matches) {
      ///If [group] is 0, returns the entire match of the pattern
      wordCountMap.update(
        ///Key
        item.group(0)!,

        ///Value
        (value) => value + 1,

        ///Exception
        ifAbsent: () => 1,
      );
    }

    return wordCountMap;
  }
}
