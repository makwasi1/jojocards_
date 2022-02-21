// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

class KidsPage extends StatefulWidget {
  const KidsPage({ Key key }) : super(key: key);

  @override
  _KidsPageState createState() => _KidsPageState();
}

class _KidsPageState extends State<KidsPage> {
  List<String> welcomeImages = Boys.getBoysDares();

  CardController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFA9443F),
        title: Text("Kids", style: TextStyle(fontSize: 25)),
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
     "When was the last time you cheated in an exam? \n Or \n Drink 1 glassful of water nonstop.",
     "If you were to have a trip far away,which one person would you choose to go with? \n Or \n You place your leg behind your shoulders.",
     "Have you ever had a fight in school? \n Or \n Do 20 frog jumps.",
     "What Is the worst thing you have ever done to your sibling? \n Or \n Keep your eyes open for 5minutes without blinking.",
     "What is the best thing you’ve ever done for your parents? \n Or \n write an appreciation letter to your parents.",
     "What are the last three things you do every night before you go to bed? \n Or \n You stick out your tongue upto your nose.",
     "When is my birthday? \n Or \n Do the pig sound for 20secs.",
     "When was the last time you passed gas? \n Or \n Crack an egg over your head.",
     "Have you ever said you finished your dinner when you really didn’t? \n Or \n Eat a plate of dessert with no hands.",
     "What would you do with 1000 dollars? \n Or \n Crab walk across the room.",
     "Have you ever faked a sickness to stay home from school? \n Or \n Attempt to do 10push ups.",
     "Have you ever watched a movie or TV show you know you’re not allowed to watch? \n Or \n Eat a hot pepper.",
     "What are some ways you cheat on house chores? \n Or \n Stand on your hands.",
     "Have you ever peeked at Christmas presents early? \n Or \n Write “cow” using your toes.",
     "If you were to be a celebrity, who would you be and why? \n Or \n Do your best lion roar.",
     "What is your biggest fear? \n Or \n Do your best Mickey mouse impression.",
     "If you were to tell your secrets to one of your parents, who would you tell and why? \n Or \n Make up a poem a loud.",
     "Have you ever passed gas and blamed someone else for it? \n Or \n Act like a cat for 2minutes.",
     "What is the one thing you wish you were better at? \n Or \n Act like a monkey until your next turn.",
     "What would you rather have for dinner, fast-food or mum’s home cooking? \n Or \n Pop a balloon without using your hands or teeth.",
     "What is the grossest thing you have done today? \n Or \n Sniff the inside of someone’s shoe.",
     "Do you think kittens are so cute? \n Or \n Do the hockey pokey without singing it.",
     "Have you ever cried during a movie and if so,which one? \n Or \n Belt out a song of choice.",
     "Have you ever peed.in a pool? \n Or \n Let one of the players tickle you for 30secs.",
     "What is the least favorite gift you’ve ever received? \n Or \n Say a short story in a high pitched voice.",
     "What is your worst TV program? \n Or \n Sit on a balloon until it pops.",
     "Is there anything that you would change about yourself? \n Or \n Pretend to be captain Man for 5mins.",
     "Have you ever lied to me? \n Or \n Stop blinking for 1 minute.",
     "what is your first thought when you see the police coming to your parent’s car? \n Or \n Say “put that comb back before mummy comes back home”without moving your lips."
     "What do most people think is true about you but it is false? \n Or \n Hold an ice cube in your hands until it melts entirely.",
     "How many selfies do you take in a day? \n Or \n Sing the ABC alphabet backwards.",
     "Do you still have something you have cherished from childhood? \n Or \n Sing your favorite song in a funny voice.",
     "What is the meanest thing you did you did to someone? \n Or \n Try to lick your elbow.",
     "When was the last time you cleaned your room? \n Or \n Say “Bob the builder passed by” with your tongue sticking out.",
     "Do you still have something you have cherished from childhood? \n Or \n Sing your favorite song in a funny voice.",
     "What is the most childish thing you still do? \n Or \n Sing a song with your mouth closed until someone guesses which song it is.",
     "What is the meanest thing you did you did to someone? \n Or \n Try to lick your elbow.",
     "Do you always apologize when you wrong someone? \n Or \n Balance a spoon on your nose for 10secs.",
     "What is your dream country to travel? \n Or \n Scream the first word that comes to your mind.",
     "when was the last time you blamed someone else for something you did? \n Or \n Have an argument with the wall for 10secs.",
     "Have you ever broken something then blamed someone else for it? \n Or \n Dump a cup of ice water over your head.",
     "What is your favorite meal mummy makes? \n Or \n Put on your clothes inside out.",
     "Do you bite your nails or pick your nose? \n Or \n Smell every player’s breath and guess what they last ate or drank.",
     "Do you talk in your sleep? \n Or \n Spin in a circle 10 times then try to walk in a straight line.",
     "Who is your favorite person in your family? \n Or \n Touch your nose with your tongue.",
     "Have you ever tasted your sweat? \n Or \n Do your disco dance for 30seconds.",
     "Do you lick your plate? \n Or \n Do the chicken dance for 5minutes.",
     "What is something you have tried to do to be cooler? \n Or \n Smell a dirty sock for 10 seconds.",
     "If you were home by yourself all day, what would you do? \n Or \n Freeze for 30seconds.",
     "Have you ever walked into a wall or building ? \n Or \n Quickly say the word “propagation“ ten times without breaking within."

    ];
  }
}
