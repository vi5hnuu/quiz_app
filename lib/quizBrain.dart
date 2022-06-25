import 'package:quizzler/question.dart';

class QuizBrain{
  static const List<Question> _questionBank=[
    Question(questionText: "The atomic number for lithium is 17", questionAnswer: false),

    Question(questionText: "A cross between a horse and a zebra is called a 'Hobra'", questionAnswer: false),

    Question(questionText: "The black box in a plane is black", questionAnswer: false),

    Question(questionText: "Alliumphobia is a fear of garlic", questionAnswer: true),

    Question(questionText: "Sex Education star Gillian Anderson was born in Chicago, Illinois", questionAnswer: true),

    Question(questionText: "Prince Harry is taller than Prince William", questionAnswer: false),

    Question(questionText: "The star sign Aquarius is represented by a tiger", questionAnswer: true),

    Question(questionText: "Meryl Streep has won two Academy Awards", questionAnswer: false),

    Question(questionText: "Marrakesh is the capital of Morocco", questionAnswer: false),

    Question(questionText: "Idina Menzel sings 'let it go' 20 times in 'Let It Go' from Frozen", questionAnswer: false),

    Question(questionText: "Waterloo has the greatest number of tube platforms in London", questionAnswer: true),

    Question(questionText: "M&M stands for Mars and Moordale", questionAnswer: false),

    Question(questionText: "Gin is typically included in a Long Island Iced Tea", questionAnswer: true),

    Question(questionText: "The unicorn is the national animal of Scotland", questionAnswer: true),

    Question(questionText: "There are two parts of the body that can't heal themselves", questionAnswer: false),

    Question(questionText: "Howard Donald is the oldest member of Take That", questionAnswer: true),

    Question(questionText: "The Great Wall of China is longer than the distance between London and Beijing", questionAnswer: true),

    Question(questionText: "There are 219 episodes of Friends", questionAnswer: false),

    Question(questionText: "'A' is the most common letter used in the English language", questionAnswer: false),

    Question(questionText: "A lion's roar can be heard up to eight kilometres away", questionAnswer: true),

    Question(questionText: "In Harry Potter, Draco Malfoy has no siblings", questionAnswer: false),

    Question(questionText: "Louis Walsh is older than Simon Cowell", questionAnswer: true),

    Question(questionText: "Monaco is the smallest country in the world", questionAnswer: false),

    Question(questionText: "'What Do You Mean' was Justin Bieber's first UK number one single", questionAnswer: true),

    Question(questionText: "The river Seine in Paris is longer than the river Thames in London", questionAnswer: true),

    Question(questionText: "A cara cara navel is a type of orange", questionAnswer: true),

    Question(questionText: "There are five different blood groups", questionAnswer: false),

    Question(questionText: "Cinderella was the first Disney princess", questionAnswer: false),

    Question(questionText: "ASOS stands for As Seen On Screen", questionAnswer: true),

    Question(questionText: "The Battle Of Hastings took place in 1066", questionAnswer: true),

    Question(questionText: "H&M stands for Hennes & Mauritz", questionAnswer: true),

    Question(questionText: "Canis lupur is the scientific name for a wolf", questionAnswer: false),

    Question(questionText: "K is worth four points in Scrabble", questionAnswer: false),

    Question(questionText: "Alaska is the biggest American state in square miles", questionAnswer: true),

    Question(questionText: "Ariana Grande is 25 or under", questionAnswer: false),

    Question(questionText: "Australia is wider than the moon", questionAnswer: true),

    Question(questionText: "Queen Elizabeth II is currently the second longest reigning British monarch", questionAnswer: false),

    Question(questionText: "Madonna's real name is Madonna", questionAnswer: true),

    Question(questionText: "Serena Williams has one more singles tennis Grand Slam titles than sister Venus", questionAnswer: true),

    Question(questionText: "Alexander Fleming discovered penicillin", questionAnswer: true),

    Question(questionText: "Harry Styles' middle name is Edward", questionAnswer: true),

    Question(questionText: "Your 'radius' bone is in your leg", questionAnswer: false),

    Question(questionText: "Coffee is made from berries", questionAnswer: true),

    Question(questionText: "Drag Race's Michelle Visage is older than RuPaul", questionAnswer: false),

    Question(questionText: "The only letter not in the periodic table is the letter J", questionAnswer: true),

    Question(questionText: "Jordan North won I'm A Celebrity... Get Me Out Of Here! in 2020", questionAnswer: false),

    Question(questionText: "The small intestine is about three-and-a-half times the length of your body", questionAnswer: true),

    Question(questionText: "An octopus has three hearts", questionAnswer: false),

    Question(questionText: "Thomas Edison discovered gravity", questionAnswer: false),

    Question(questionText: "Walt Disney holds the record for the most Oscars", questionAnswer: true),

    Question(questionText: "Spaghetto is the singular word for a piece of spaghetti", questionAnswer: true),

    Question(questionText: "Venus is the hottest planet in the solar system", questionAnswer: true),

    Question(questionText: "Hillary Clinton and Celine Dion are related", questionAnswer: false),

    Question(questionText: "Cardi B's real name is Cardigan Backyardigan", questionAnswer: false),

    Question(questionText: "Bananas are curved because they grow upwards towards the sun", questionAnswer: true),

    Question(questionText: "The five rings on the Olympic flag are interlocking", questionAnswer: true),

    Question(questionText: "Fish cannot blink", questionAnswer: true),

    Question(questionText: "Friends star Lisa Kudrow was originally cast in Frasier", questionAnswer: true),

    Question(questionText: "Goldfish have a two second memory", questionAnswer: false),

    Question(questionText: "50 Cent and Charlie Chaplin were alive at the same time", questionAnswer: true),

    Question(questionText: "There are 14 bones in a human foot", questionAnswer: false),

    Question(questionText: "Hot and cold water sound the same when poured.", questionAnswer: false),

    Question(questionText: "There have been seven million pound winners on Who Wants to Be a Millionaire.", questionAnswer: false),

    Question(questionText: "Meghan Markle's first name is Rachel.", questionAnswer: true),

    Question(questionText: "In Finding Nemo the protagonist is a pufferfish.", questionAnswer: false),

    Question(questionText: "In a deck of cards, the king has a mustache.", questionAnswer: false),

    Question(questionText: "When the two numbers on opposite sides of a dice are added together it always equals 7.", questionAnswer: true),

    Question(questionText: "In the English language there is no word that rhymes with orange.", questionAnswer: true),

    Question(questionText: "Hippos sweat a red substance.", questionAnswer: true),

    Question(questionText: "Sex and the City star Kim Cattrall is from California.", questionAnswer: false),
    ];
  int _currQuesNo=0;
  String get questionText{
    return _questionBank[_currQuesNo].question;
  }
  bool get answer{
    return _questionBank[_currQuesNo].answer;
  }
  bool nextQuestion(){
    if(_currQuesNo+1<_questionBank.length){
      _currQuesNo=(_currQuesNo+1)%_questionBank.length;
      return true;
    }else{
      return false;
    }
  }
  void reset(){
    _currQuesNo=0;
  }
}