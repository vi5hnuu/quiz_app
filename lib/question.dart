class Question{
  final String questionText;
  final bool questionAnswer;
  const Question({required this.questionText,required this.questionAnswer});
  bool get answer{
    return questionAnswer;
  }
   String get question{
    return questionText;
  }
}