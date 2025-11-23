

import 'dart:math';

import 'package:get/get.dart';

class QuotesController extends GetxController{
  RxInt initialNumber = 0.obs;
  RxDouble opacityNumber = 1.0.obs ;
  List<Map<String,String>> allQuotes = [
    {
      "author": "Albert Einstein",
      "quote": "⭐Life is like riding a bicycle. To keep your balance, you must keep moving.⭐"
    },
    {
      "author": "Allama Iqbal",
      "quote": "⭐Khudi ko kar buland itna ke har taqdeer se pehle, Khuda bande se khud pooche bata teri raza kya hai.⭐"
    },
    {
      "author": "Quaid-e-Azam Muhammad Ali Jinnah",
      "quote": "💙With faith, discipline and selfless devotion to duty, there is nothing worthwhile that you cannot achieve.💙"
    },
    {
      "author": "Faiz Ahmed Faiz",
      "quote": "❤️Bol ke lab azaad hain tere.❤️"
    },
    {
      "author": "Ahmed Faraz",
      "quote": "❤️Ranjish hi sahi, dil hi dukhane ke liye aa.❤️"
    },
    {
      "author": "Jaun Elia",
      "quote": "💙Main bhi bahut ajeeb hoon, itna ajeeb hoon ke bas. Khud ko tabah kar liya aur malal bhi nahin.💙"
    },
    {
      "author": "Parveen Shakir",
      "quote": "💚Khushbu ki tarah mujhko hawaon mein udda do.💚"
    },
    {
      "author": "Virginia Woolf",
      "quote": "💚Arrange whatever pieces come your way.💚"
    },
    {
      "author": "Ernest Hemingway",
      "quote": "💜Courage is grace under pressure.💜"
    },
    {
      "author": "Jane Austen",
      "quote": "💜There is no charm equal to tenderness of heart.💜"
    },
    {
      "author": "Charles Dickens",
      "quote": "💖Have a heart that never hardens, and a temper that never tires.💖"
    },
    {
      "author": "George Orwell",
      "quote": "💖In a time of deceit telling the truth is a revolutionary act.💖"
    },
    {
      "author": "C.S. Lewis",
      "quote": "🔥Hardships often prepare ordinary people for an extraordinary destiny.🔥"
    },

    {
      "author": "Mark Twain",
      "quote": "🔥The secret of getting ahead is getting started.🔥"
    },
    {
      "author": "Oscar Wilde",
      "quote": "✨Be yourself; everyone else is already taken.✨"
    },
    {
      "author": "Maya Angelou",
      "quote": "✨You will face many defeats in life, but never let yourself be defeated.✨"
    },
    {
      "author": "Paulo Coelho",
      "quote": "🌟When you want something, all the universe conspires in helping you to achieve it.🌟"
    },
    {
      "author": "Rumi",
      "quote": "🌟What you seek is seeking you.🌟"
    },
    {
      "author": "Leo Tolstoy",
      "quote": "🌸The two most powerful warriors are patience and time.🌸"
    },
    {
      "author": "Khalil Gibran",
      "quote": "🌸Out of suffering have emerged the strongest souls.🌸"
    },
    {
      "author": "George Bernard Shaw",
      "quote": "💫Progress is impossible without change.💫"
    },
    {
      "author": "William Shakespeare",
      "quote": "💫We know what we are, but know not what we may be.💫"
    },{
      "author": "Stephen King",
      "quote": "💫Books are a uniquely portable magic.💫"
    },
    {
      "author": "Dalai Lama",
      "quote": "🌸Happiness is not something ready made. It comes from your own actions.🌸"
    },
    {
      "author": "Mother Teresa",
      "quote": "🌟If you judge people, you have no time to love them.🌟"
    },
    {
      "author": "Martin Luther King Jr.",
      "quote": "✨Injustice anywhere is a threat to justice everywhere.✨"
    },
    {
      "author": "Helen Keller",
      "quote": "🔥The only thing worse than being blind is having sight but no vision.🔥"
    },
    {
      "author": "Allama Iqbal",
      "quote": "💖Sitaron se aage jahan aur bhi hain,Abhi ishq ke imtihan aur bhi hain.Tahi zindagi se nahi ye fazayen,Yahan sau khiraman aur bhi hain.💖"
    },
    {
      "author": "Faiz Ahmed Faiz",
      "quote": "💜Gulon mein rang bhare, baad-e-naubahar chale,Chale bhi aao ke gulshan ka karobar chale.Qafas udaas hai yaron, saba se kuch to kaho,Kaheen to beher-e-khudaa aaj zikr-e-yaar chale.💜"
    },
    {
      "author": "Ahmed Faraz",
      "quote": "💚Ranjish hi sahi, dil hi dukhane ke liye aa,Aa phir se mujhe chhod ke jaane ke liye aa.Kuch to mere dil ko tasalli hogi,Tu is dafa vaada nibhaane ke liye aa.💚"
    },
    {
      "author": "Jaun Elia",
      "quote": "💙Main bhi bahut ajeeb hoon, itna ajeeb hoon ke bas,Khud ko tabah kar liya, aur malal bhi nahi.Har zakhm bhar gaya mujhe chhor kar,Magar ek dard hai jo gaya hi nahi.💙"
    },
    {
      "author": "Parveen Shakir",
      "quote": "❤️Woh toh khushbu hai, hawaon mein bikhar jayega,Masla phool ka hai, phool kidhar jayega.Hum se mat pooch ke hum kis pe fida hain Parveen,Hum batayenge magar naam pehle mar jayega.❤️"
    },
    {
      "author": "Munir Niazi",
      "quote": "⭐Hamesha der kar deta hoon main,Har kaam karne mein.Muhabbat bhi nahi karta,Aur jab karta hoon to der se.⭐"
    },
    {
      "author": "Confucius",
      "quote": "It does not matter how slowly you go as long as you do not stop."
    },
    {
      "author": "William Wordsworth",
      "quote": "💎Though nothing can bring back the hour Of splendor in the grass, of glory in the flower;We will grieve not, rather find Strength in what remains behind.💎"
    },
    {
      "author": "Robert Frost",
      "quote": "💎Two roads diverged in a wood, and I took the one less traveled by,And that has made All the difference.💎"
    },
    {
      "author": "Emily Dickinson",
      "quote": "❄️Hope is the thing with feathers That perches in the soul,And sings the tune without the words,And never stops at all.❄️"
    },
    {
      "author": "Lord Byron",
      "quote": "❄️She walks in beauty, like the night Of cloudless climes and starry skies;And all that's best of dark and bright Meet in her aspect and her eyes.❄️"
    },
    {
      "author": "Percy Bysshe Shelley",
      "quote": "🌸Rise like Lions after slumber In unvanquishable number Shake your chains to earth like dew Which in sleep had fallen on you.🌸"
    },
    {
      "author": "T. S. Eliot",
      "quote": "🌸For last year’s words belong to last year’s language,And next year’s words await another voice.To make an end is to make a beginning.The end is where we start from.🌸"
    }
  ];
  void setQuotesFun()async{
    opacityNumber.value = 0.0;
    await Future.delayed(Duration(milliseconds:  900),(){ final random = Random();
    initialNumber.value =
        random.nextInt(allQuotes.length);},


    );
    opacityNumber.value = 1.0;

  }

}