class RnaTranscription {
  String toRna(String strand) {
    String result = '';

    for (int i = 0; i < strand.length; i++) {
      if (strand[i] == 'G') result += 'C';
      if (strand[i] == 'C') result += 'G';
      if (strand[i] == 'T') result += 'A';
      if (strand[i] == 'A') result += 'U';
    }
    return result;
  }
}
