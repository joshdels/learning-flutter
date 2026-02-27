void showWinners(Map<String, int> scores) {
  scores.forEach((name, score) {
    if (score > 6) {
      print('Winner is $name');
    }
  });
}
