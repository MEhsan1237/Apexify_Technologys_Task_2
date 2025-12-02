import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuotesController extends GetxController {
  RxInt initialNumber = 0.obs;
  RxDouble opacityNumber = 1.0.obs;

  RxBool isDark = false.obs;
  RxInt selectedOption = 1.obs; // 1 = light, 2 = dark


  void toggleThemeFromRadio(int val) {
    selectedOption.value = val;
    isDark.value = val == 2; // 2 = dark theme

    if (isDark.value) {
      Get.changeTheme(ThemeData.dark());
    } else {
      Get.changeTheme(ThemeData.light());
    }
  }


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
    },
    {
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
    },
    {
      "author": "Emily Brontë",
      "quote": "🌺Whatever our souls are made of, his and mine are the same.In every quiet moment, I find his presence in mine.🌺"
    },
    {
      "author": "Kahlil Gibran",
      "quote": "🥀Your children are not your children.They are the sons and daughters of Life's longing for itself.You may give them your love but not your thoughts.🥀"
    },
    {
      "author": "Jane Austen",
      "quote": "🥀There is no charm equal to tenderness of heart.Kindness and patience make life beautiful in ways riches cannot.🥀"
    },
    {
      "author": "Victor Hugo",
      "quote": "🥀Even the darkest night will end and the sun will rise.Hope is the light that never fades.🥀"
    },
    {
      "author": "Rainer Maria Rilke",
      "quote": "🌹Be patient toward all that is unsolved in your heart and try to love the questions themselves.🌹"
    },
    {
      "author": "Virginia Woolf",
      "quote": "🌹Lock up your libraries if you like;But there is no gate, no lock, no bolt that you can set upon the freedom of my mind.🌹"
    },
    {
      "author": "Paulo Coelho",
      "quote": "🌹When you want something, all the universe conspires in helping you to achieve it.Your dreams are never unreachable if you believe.🌹"
    },
    {
      "author": "Carl Jung",
      "quote": "🍀Your vision will become clear only when you can look into your own heart.Who looks outside, dreams; who looks inside, awakens.🍀"
    },
    {
      "author": "Louisa May Alcott",
      "quote": "🍀I am not afraid of storms, for I am learning how to sail my ship.Every difficulty teaches courage and strength.🍀"
    },
    {
      "author": "Herman Hesse",
      "quote": "🍀Some of us think holding on makes us strong,but sometimes it is letting go.Release what weighs heavy on your soul.🍀"
    },
    {
      "author": "Emily Dickinson",
      "quote": "🪻Forever is composed of nows.Cherish the small moments, for they Build the story of your life.Let gratitude guide your days,And love light every step you take.🪻"
    },
    {
      "author": "William Blake",
      "quote": "🪻If the doors of perception were cleansed,Everything would appear to man as it is: infinite.Open your mind to wonder,And the world will reveal its hidden beauty In every leaf, in every ray of light.🪻"
    },
    {
      "author": "Mary Shelley",
      "quote": "🪻The beginning is always today.Do not fear the unknown,Step boldly into new adventures,Embrace change, and allow your courage To guide your every choice.🪻"
    },
    {
      "author": "Rabindranath Tagore",
      "quote": "💮You can’t cross the sea merely by standing and staring at the water.Take the first step with faith,Let your heart lead the way,And the journey will open doors You never imagined existed.💮"
    },
    {
      "author": "Louise Glück",
      "quote": "💮The sun rises each morning, a new promise.No matter how dark the night,Light will return,Hope will awaken,And your spirit will find its song again.💮"
    },
    {
      "author": "Toni Morrison",
      "quote": "💕If you want to fly, you have to give up the things that weigh you down.Release fear,Trust your instincts,And let your imagination soar To reach new heights of joy and freedom.💕"
    },
    {
      "author": "Simone de Beauvoir",
      "quote": "💕Change your life today.Do not gamble on the future,Act now,Break free from limiting thoughts,And become the person you are meant to be.💕"
    },
    {
      "author": "Sylvia Plath",
      "quote": "💕I took a deep breath and listened to the old brag of my heart:I am, I am, I am.Acknowledge your existence,Honor your emotions,And let your heart lead you forward.💕"
    },
    {
      "author": "Albert Schweitzer",
      "quote": "💝Success is not the key to happiness.Happiness is the key to success.If you love what you are doing,You will succeed naturally,And every day will feel meaningful.💝"
    },
    {
      "author": "Anaïs Nin",
      "quote": "💝And the day came when the risk to remain tight In a bud was more painful than the risk It took to blossom.Embrace your growth,And bloom fully into your life.💝"
    }
  ];
  void setQuotesFun() async {
    opacityNumber.value = 0.0;
    await Future.delayed(Duration(milliseconds: 900), () {
      final random = Random();
      initialNumber.value = random.nextInt(allQuotes.length);
    });

    opacityNumber.value = 1.0;

  }
}




