class Anagram {
  /// Essentially, what I am doing is dividing the string into a list with the .split() method,
  /// sorting the string's letters according to alphabetical order with the ..sort() method,
  /// and then joining them once more with the .join() method.
  String arrangeString(String string) =>
      (string.toLowerCase().split('')..sort()).join('');
  List<String> findAnagrams(String word, List<String> candidates) {
    final matches = <String>[];

    /// This variable is here because you don't need to call `arrangeString(word)`
    /// on every iteration. It's always the same thing!
    String arrangedWord = arrangeString(word);
    for (int i = 0; i < candidates.length; i++) {
      /// The first if statement is for Edge cases
      if (word.toLowerCase() != candidates[i].toLowerCase()) {
        if (arrangedWord == arrangeString(candidates[i])) {
          matches.add(candidates[i]);
        }
      }
    }
    return matches;
  }
}
