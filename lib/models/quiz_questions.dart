class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;
  
  List<String> getShuffledAnswers(){
    final shuffledList = List.of(answers); // tạo List từ List khác
    List.of(shuffledList).shuffle();
    return shuffledList;
  }
}
