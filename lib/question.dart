class Question {
  String questao;
  String option1;
  String option2;
  String option3;
  String option4;
  int answer;

  Question(
    this.questao,
    this.option1,
    this.option2,
    this.option3,
    this.option4,
    this.answer
  );

  static List<Question> getQuestionList() {
    List<Question> questions = [];

    questions.add(
      Question(
        'O que é Dart?', 
        'Um novo smartphone', 
        'Um serviço do Google', 
        'Um sdk de desenvolvimento multiplataforma', 
        'Uma linguagem de programação', 
        4
      )
    );
    questions.add(
      Question(
        'O que é Flutter?', 
        'Um serviço do Apple', 
        'Um sdk de desenvolvimento multiplataforma', 
        'Uma linguagem de programação', 
        'Um novo navegador', 
        2
      )
    );

    return questions;
  }
}