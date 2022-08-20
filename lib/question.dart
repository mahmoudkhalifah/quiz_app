class Question {
  String question;
  bool answer;

  Question ({
    required this.question,
    required this.answer,
  });
  
  void printValues() {
    print(question);
    print(answer);
  }
}