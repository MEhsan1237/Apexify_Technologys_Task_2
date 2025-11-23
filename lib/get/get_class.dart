

import 'dart:math';

import 'package:get/get.dart';

class QuotesController extends GetxController{
  RxInt initialNumber = 0.obs;
  List<Map<String,String>> allQuotes = [
    {
      "author": "Albert Einstein",
      "quote": "Life is like riding a bicycle. To keep your balance, you must keep moving."
    },
    {
      "author": "Allama Iqbal",
      "quote": "Khudi ko kar buland itna ke har taqdeer se pehle, Khuda bande se khud pooche bata teri raza kya hai."
    },
    {
      "author": "Quaid-e-Azam Muhammad Ali Jinnah",
      "quote": "With faith, discipline and selfless devotion to duty, there is nothing worthwhile that you cannot achieve."
    },
    {
      "author": "Faiz Ahmed Faiz",
      "quote": "Bol ke lab azaad hain tere."
    },
    {
      "author": "Ahmed Faraz",
      "quote": "Ranjish hi sahi, dil hi dukhane ke liye aa."
    },
    {
      "author": "Jaun Elia",
      "quote": "Main bhi bahut ajeeb hoon, itna ajeeb hoon ke bas. Khud ko tabah kar liya aur malal bhi nahin."
    },
    {
      "author": "Parveen Shakir",
      "quote": "Khushbu ki tarah mujhko hawaon mein udda do."
    },
    {
      "author": "Virginia Woolf",
      "quote": "Arrange whatever pieces come your way."
    },
    {
      "author": "Ernest Hemingway",
      "quote": "Courage is grace under pressure."
    },
    {
      "author": "Jane Austen",
      "quote": "There is no charm equal to tenderness of heart."
    },
    {
      "author": "Charles Dickens",
      "quote": "Have a heart that never hardens, and a temper that never tires."
    },
    {
      "author": "George Orwell",
      "quote": "In a time of deceit telling the truth is a revolutionary act."
    },
    {
      "author": "C.S. Lewis",
      "quote": "Hardships often prepare ordinary people for an extraordinary destiny."
    },

    {
      "author": "Mark Twain",
      "quote": "The secret of getting ahead is getting started."
    },
    {
      "author": "Oscar Wilde",
      "quote": "Be yourself; everyone else is already taken."
    },
    {
      "author": "Maya Angelou",
      "quote": "You will face many defeats in life, but never let yourself be defeated."
    },
    {
      "author": "Paulo Coelho",
      "quote": "When you want something, all the universe conspires in helping you to achieve it."
    },
    {
      "author": "Rumi",
      "quote": "What you seek is seeking you."
    },
    {
      "author": "Leo Tolstoy",
      "quote": "The two most powerful warriors are patience and time."
    },
    {
      "author": "Khalil Gibran",
      "quote": "Out of suffering have emerged the strongest souls."
    },
    {
      "author": "George Bernard Shaw",
      "quote": "Progress is impossible without change."
    },
    {
      "author": "William Shakespeare",
      "quote": "We know what we are, but know not what we may be."
    },{
      "author": "Stephen King",
      "quote": "Books are a uniquely portable magic."
    },
    {
      "author": "Dalai Lama",
      "quote": "Happiness is not something ready made. It comes from your own actions."
    },
    {
      "author": "Mother Teresa",
      "quote": "If you judge people, you have no time to love them."
    },
    {
      "author": "Martin Luther King Jr.",
      "quote": "Injustice anywhere is a threat to justice everywhere."
    },
    {
      "author": "Helen Keller",
      "quote": "The only thing worse than being blind is having sight but no vision."
    },
    {
      "author": "Confucius",
      "quote": "It does not matter how slowly you go as long as you do not stop."
    }
  ];
  void setQuotesFun(){
     final random = Random();
    initialNumber.value =
        random.nextInt(allQuotes.length);
  }

}