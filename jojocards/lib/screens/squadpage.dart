// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

class SquadPage extends StatefulWidget {
  const SquadPage({ Key key }) : super(key: key);

  @override
  _SquadPageState createState() => _SquadPageState();
}

class _SquadPageState extends State<SquadPage> {
  List<String> welcomeImages = Boys.getBoysDares();

CardController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFA9443F),
        title: Text("Squad", style: TextStyle(fontSize: 25)),
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
     "What is the first thing you would do if you woke up one day as the opposite sex? \n Or \n Let the players pause you as a maniquen and stay that way until your next round ",
     "After you’ve dropped a piece of food, what is the longest time you’ve left it on the floor then eaten it? \n Or \n Comment on your bestfriend’s post “you’re not all that...”",
     "Have you ever walked in on your parents doing it? \n Or \n Repeat everything the person to your left says until your next turn.",
     "Who among the players would you consider to be the worst dressed? \n Or \n Act like you are drunk until your next turn.",
     "What are some of the things you think of when seated on the toilet? \n Or \n Twerk for 5mins in fast motion.",
     "In the squad,who would you choose to trade lives with? \n Or \n Talk with your tongue stuck out until your next turn.",
     "True or false;you have had a crush on (fill in name)? \n Or \n Make eye contact with one of the players for the next 45secs.(players choose who).",
     "What is your guilty pleasure? \n Or \n make your communication using animal sounds only for the next 45secs.",
     "Have you ever tried to take a sexy /nude picture of yourself?  \n Or \n  Call any of your siblings and tell them you just found out that you are adopted.",
     "Do you snore when asleep? \n Or \n Call your parents and tell them you just saw them on TV.",
     "What is your type when it comes to your love life?  \n Or \n  Describe what the sky looks like without using the words “blue” or “white”.",
     "Who do you consider to be the sexiest person in the room? (Besides you )  \n Or \n  Text your mum and tell her you’re expecting a baby.",
     "Who is your secret crush?  \n Or \n  Do your best impersonation of someone in the squad until the players guess who it is.",
     "Do you think(fill in name) Is cute?  \n Or \n  Call someone randomly and confess your new-found love for Justin bieber.",
     "With reason,who do you like the least in this room?  \n Or \n  Post an embarrassing photo of yourself on all your social media stories.",
     "Have you ever farted loudly in public?  \n Or \n  Say “banana” after everything you say until its your next turn.",
     "What don’t you like about me?  \n Or \n  Hug three random strangers while asking for their contacts (players decide who).",
     "What is your biggest pet peeve?  \n Or \n  sniff another player’s armpits for 10secs(players choose who).",
     "When was the last time you had a one night stand?  \n Or \n  Send airtime worth 2 dollars to the player asking the dare.",
     "Which part of your body do you like the most and which one do you hate?  \n Or \n  Touch your favorite part of the body of the person asking the dare.",
     "Who in this room would be the worst person to date and why?  \n Or \n  Ask a random person for a kiss.",
     "if someone offered you one million dollars to break up with your partner,would you do it?  \n Or \n  Do your best breakdance moves for 5mins while singing your own song.",
     "What is your hidden talent?  \n Or \n  Do your best acceptance speech for winning the presidential elections. ",
     "What is the worst date you’ve been on with someone?  \n Or \n  Ask one of the players out on a date.",
     "What would your stripper name be and why? Or Try to sing with a mouthful of water.",
     "Who is your least favorite family member and why?  \n Or \n  Eat a booger from your nose.",
     "If you were famous,what would you be famous for?  \n Or \n  Tell a stranger that you are an upcoming artist and you’re asking for their support.",
     "What is a common skill you don’t possess(eg whistling)?  \n Or \n  Roll your tongue and spell your surname.",
     "Would you ever date someone 20years older than you?  \n Or \n  Call someone random and tell them you have just seen them hanging with the biggest celebrity in town.",
     "Have you ever fallen in love with a friend of your partner and did you ever get caught?  \n Or \n Show the players the 5most recent photos in your gallery.",
     "What is something that noone else knows about you?  \n Or \n  Hum a song of your choose until the players rightly guess which song it is.",
     "Have you ever been caught doing something you shouldn’t do and what was it?  \n Or \n  Make up a story about the player to your right as if they were a cornman.",
     "Has your partner ever embarrassed you?  \n Or \n  Say “vex” after everything you say until your next turn.",
     "Have you ever posted something on social media that you regret posting and what was it?  \n Or \n  Vibe one of the players while having hiccups.",
     "Who is one person you pretend to like but actually don’t?  \n Or \n  Text a breakup message to a random person in your contacts.",
     "If you were to spread dirty rumors with a bit of truth about two people in the squad, who would it be and what would the rumors be?  \n Or \n  Apologize to a random stranger forsomething you didn’t do.",
     "Rate all the players’ looks on a scale of 1-10?.  \n Or \n  Give one dollar to the person asking the dare.",
     "Have you ever been caught checking someone out?  \n Or \n  Speak a foreign language until your next turn.",
     "Would you rather have sex with (insert name) in secret or or not have sex with that person but everyone thinks you did?  \n Or \n  Talk to one of the players of your choice intimately for 5mins."
     "What is your biggest fear in a relationship?  \n Or \n  Confess your feelings to your current crush in front of all the players.",
     "Have you ever had a crush on your boss/teachers?  \n Or \n  Do your best impersonation of your Boss/least favorite teacher.",
     "Tell us about a time you embarrassed yourself in front of your crush?  \n Or \n  Act like you’re a parent to one of the players until your next turn (players choose who)."
     "What is your idea of a perfect date?  \n Or \n  Give your favorite player in the Squad a foot massage for 30secs.",
     "What body feature do you get complimented on the most?  \n Or \n  Desscribe every body part of one of the players from head to toe in your own words.",
     "Have you ever lied to your partner to avoid an intimate moment?  \n Or \n  Make up a false story about the person to your right.",
     "What is the maximum number of partners you have played in a relationship?  \n Or \n  say your defence statement when you have been stopped by the cop for over speeding.",
     "What is the dumbest thing you’ve said to your partner while on intimacy?  \n Or \n  Very affectionately kiss another player in the group( chosen by the players).",
     "Which of the players is considered to be wearing the most sensual clothes?  \n Or \n  Declare your love to your true love.",
     "What is your wildest fantasy?  \n Or \n  Give a shoulder massage to someone present (players choose who).",
     "What is your run-to word when you are extremely angry?  \n Or \n  Sing everything you want to say until your next turn."

    ];
  }
}