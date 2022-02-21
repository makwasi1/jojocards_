// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

class CouplesPage extends StatefulWidget {
  const CouplesPage({ Key key }) : super(key: key);

  @override
  _CouplesPageState createState() => _CouplesPageState();
}

class _CouplesPageState extends State<CouplesPage> {
  List<String> welcomeImages = Boys.getBoysDares();

   CardController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFA9443F),
        title: Text("Couples", style: TextStyle(fontSize: 25)),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.5,
          child: TinderSwapCard(
            swipeUp: true,
            swipeDown: true,
            orientation: AmassOrientation.BOTTOM,
            totalNum: welcomeImages.length,
            stackNum: 3,
            swipeEdge: 4.0,
            maxWidth: MediaQuery.of(context).size.width * 0.9,
            maxHeight: MediaQuery.of(context).size.width * 0.9,
            minWidth: MediaQuery.of(context).size.width * 0.8,
            minHeight: MediaQuery.of(context).size.width * 0.8,
            cardBuilder: (context, index) => Card(
             child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                          padding: EdgeInsets.only(top: 100),
                          child: Text(
                            '${welcomeImages[index]}',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'calibri-bold',
                                fontSize: 24),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            cardController: controller = CardController(),
            swipeUpdateCallback: (DragUpdateDetails details, Alignment align) {
              /// Get swiping card's alignment
              if (align.x < 0) {
                //Card is LEFT swiping
              } else if (align.x > 0) {
                //Card is RIGHT swiping
              }
            },
            swipeCompleteCallback:
                (CardSwipeOrientation orientation, int index) {
              /// Get orientation & index of swiped card!
            },
          ),
        ),
      ),
    );
  }
}

class Boys {
  static List<String> getBoysDares() {
    return [
      "What have you always wanted to try but never have? \n Or \n Dance to one song for me/us.",
      "What is your most valued memory? \n Or \n Give your partner a massage anywhere you’d like.",
      "What is the one question you never want me to ask you? \n Or \n Play a song you’d like to have sex to."
      "which item or clothing do you think I look sexiest in? \n Or \n Passionately kiss me.",
      "What is the one question you never want me to ask you? \n Or \n Play a song you’d like to have sex to."
      "Where do you think our most romantic kiss took place?and tell me everything you remember about it? \n Or \n Describe the most exciting kiss you’ve ever had about your partner.",
      "What are you most afraid of? \n Or \n Imitate your partner doing something you think is cute.",
      "What is your biggest insecurity about our relationship? \n Or \n Draw your version of a perfect date.",
      "What were your exact thoughts when you asked me to be your girlfriend /boyfriend /when I said I do? \n Or \n Give me your best lap dance.",
      "Whats your favorite thing for us to do together? \n Or \n Without touching me, do something you think will turn me on.",
      "What kind of food turns you on? \n Or \n Pretend I’m a stranger in a club,try to pick me up and persuade me to come home with you.",
      "What are two of your guilty pleasures? \n Or \n Close your eyes,tap a random contact and text them “look behind you”.",
      "Whats something I don’t know about you? \n Or \n Text your parents /siblings “I need my pants”.",
      "What did you think of our first date? \n Or \n Pretend to be a baby until your next turn.",
      "What quality about you would you change? \n Or \n Kiss my big toe.",
      "Do you like telling me what to do in bed? \n Or \n Do you prefer to be told what to do.",
      "How have I changed since we got together \n Or \n Open your Instagram /Facebook and like each picture on your ex’s page.",
      "What do you love mostly about me \n Or \n Call up a delivery place and ask them if they have something they don’t supply.",
      "What is my weirdest habit? \n Or \n Take off my top using only one hand.",
      "Are you where you thought you would be 10years ago? \n Or \n Call an old friend and talk gibberish.",
      "What was the last thing you cried about? \n Or \n Talk in your hottest accent until your next turn.",
      "Whats the best way to turn you on? \n Or \n Eat a fruit in the sexiest way possible.",
      "Would you prefer Netflix and chill or a date at a fancy place? \n Or \n Act out the move that I do during sex that you absolutely love.",
      "What is my favorite meal to prepare? \n Or \n Find a way of giving me goosebumps, using only fingers.",
      "What was your worst date like? \n Or \n Eat a fruit in the sexiest way possible.",
      "What’s something you are looking forward to in our relationship? \n Or \n Stand on one leg and say 2things you hate about our dates.",
      "What was going through your mind the first time we kissed? \n Or \n Whisper one of your darkest secrets.",
      "Whats the worst date we have had? \n Or \n Spell out a message on my body using your tongue. Keep it short.",
      "Describe your ideal role play scenario to me/us? \n Or \n Express your love for me in sign language.",
      "Rate our love story on a scale of 1-10? \n Or \n Send a wierd GIF to the 10th person in your chats.",
      "Are you possessive about me? \n Or \n our relationship or imitate any 5 emojis.",
      "Party at a club or movie night at home? \n Or \n Talk to a chair like its your celebrity crush.",
      "What is your favorite time of the year? \n Or \n Do your best impression of me when I’m angry about something.",
      "How would you spend an entire week without me? \n Or \n Reveal whatever is in your bag/pockets.",
      "What is your favorite color on me? \n Or \n Dance on an imaginary pole.",
      "What would you enjoy about being stranded with me on a deserted island? \n Or \n Hum our favorite song until I rightly guess which song it is.",
      "when you randomly hear my name in public,what is that one thing that comes to your mind? \n Or \n Do 8 push ups while saying I love you.",
      "Do you like my cooking or tell 5 of your favorite quotes in one breath? \n Or \n Tell 5 of your favorite quotes in one breath.",
      "what is the worst gift you’ve received from me? \n Or \n Twerk on a boring song for 10mins.",
      "What is the craziest thing on your bucket list? \n Or \n Get down on one knee and propose to me with a joke.",
      "Which part of your body gets the most compliments and by who? \n Or \n Take off my shirt using your teeth only.",
      "What turns you on? \n Or \n Do 5 squats in the slowest manner possible.",
      "What is your worst addiction? \n Or \n Free style 43 have you ever lied to me or give me 2 dollars.",
      "What is the most stupid excuse you’ve ever given me? \n Or \n Sing the alphabet without opening your mouth.",
      "What is your biggest turn off in a person of the opposite sex? \n Or \n Narrate a fake romantic and intimate story about a date with your celebrity crush."
      "How far did you go on your first date in life? \n Or \n Draw the alphabet in air with your lips",
      "Share one thing which you think could cause our break up \n Or \n prank call your ex and tell her she’s going to be sued for theft.",
      "Have you ever accidentally sent a wrong intimate message to your colleague? \n Or \n Be blindfolded and tickled for 5minutes.",
      "Have you ever cheated in a relationship and why? \n Or \n Spank yourself 5 times.",
      "What is one of the most terrific things that we have ever done together ? \n Or \n Tell a dry joke for 5minutes."
    ];
  }
}
