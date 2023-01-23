import 'question.dart';
class QuizzBrain {
  int _questionNumber = 0;
  final List<Question> _questionBank = [
    Question('Venezuela is home to the world\ ’s highest waterfall', true),
    Question('Coffee is a berry-based beverage', true),
    Question('Lithium\'s atomic number is 17', false),
    Question(
        'Polar bears can only live in the Arctic region, not in the Antarctic. ',
        true),
    Question('The longest river in the world is the Amazon River', false),
    Question('The moon is wider than Australia', false),
    Question(
        'Patients with COVID-19 may use ibuprofen, aspirin, or naproxen as anti-inflammatory medications',
        true),
    Question('The first Disney princess was Cinderella', false),
    Question('In a regular deck of cards, all kings have a mustache', false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {

      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }
  void reset() {
    _questionNumber = 0;
  }
}