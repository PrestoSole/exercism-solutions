class Hamming {
  int distance(String firstStrand, String secondStrand) {
    if (firstStrand.length != secondStrand.length) {
      throw ArgumentError(
        firstStrand.isEmpty || secondStrand.isEmpty
            ? 'no strand must be empty'
            : 'left and right strands must be of equal length',
      );
    }
    int hummingDistance = 0;
    for (int i = 0; i < firstStrand.length; i++) {
      if (firstStrand[i] != secondStrand[i]) hummingDistance++;
    }
    return hummingDistance;
  }
}
