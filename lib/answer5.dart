import 'dart:io';


class Question {

String text;

String answer;

List<String> choices;

Question(this.text, this.answer, this.choices);

}




class Quiz {

List<Question> questions;

int score = 0;

Quiz(this.questions);
void start() {
for (var i = 0; i < questions.length; i++) {
print('Question ${i + 1}: ${questions[i].text}');
for (var j = 0; j < questions[i].choices.length; j++) {
print('${j + 1}: ${questions[i].choices[j]}');
}

stdout.write('Enter your answer (1-${questions[i].choices.length}): ');
var input = stdin.readLineSync();
var answerIndex = int.tryParse(input ?? '');
if (answerIndex != null && answerIndex >= 1 && answerIndex <= questions[i].choices.length) {
var selectedAnswer = questions[i].choices[answerIndex - 1];

if (selectedAnswer == questions[i].answer) {
print('Correct!');
score++;
} 

else {
print('Incorrect. The correct answer is: ${questions[i].answer}');
}

} 
else {
print('Invalid input. Skipping question.');
}

print('');

}

print('Quiz complete. Your score is $score out of ${questions.length}.');

}

}




void main() {
var questions = [

Question('How many players are there in polo game?', '4', ['3', '2', '4', '10']),

Question('What is the symbol for potassium?', 'K', ['P', 'K', 'S', 'O']),

];




var quiz = Quiz(questions);

quiz.start();

}