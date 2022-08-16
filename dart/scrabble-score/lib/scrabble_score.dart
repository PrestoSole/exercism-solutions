int score(String string) {
  var values = {
    "AEIOULNRST": 1,
    "DG": 2,
    "BCMP": 3,
    "FHVWY": 4,
    "K": 5,
    "JX": 8,
    "QZ": 10
  };

  /// We first convert the string toUpperCase() before we split() it into individual characters.
  /// Then we use the singleWhere() method to find matching letters with values{}
  /// Finally, we return back the total score
  return string.toUpperCase().split("").fold(
    0,
    (int totalScore, letter) {
      String valuesKeys = values.keys.singleWhere(
        (String key) => key.contains(letter),
      );
      return totalScore + values[valuesKeys]!.toInt();
    },
  );
}
