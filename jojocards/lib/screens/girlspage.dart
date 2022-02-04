import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

class GilrsPage extends StatefulWidget {
  const GilrsPage({ Key key }) : super(key: key);

  @override
  _GilrsPageState createState() => _GilrsPageState();
}

class _GilrsPageState extends State<GilrsPage> {
  List<String> welcomeImages = Boys.getBoysDares();

  CardController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFA9443F),
        title: Text("Girls", style: TextStyle(fontSize: 25)),
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
      "Have you ever thought of cheating on your partner \n Or \n Mime your dream job",
      "What is your guilty pleasure \n Or \n Stand on one leg until your next turn",
      "What is the most useless piece of knowledge you know ? \n Or \n Down a shot of what the person on your left is drinking",
      'Have you ever tried to take a sexy nude picture of yourself \n Or \n Write a Facebook post (or other social media ) using your toes',
      "Do you prefer it with the lights on or off? \n Or \n Quickly spell catastrophe in 3seconds",
      "what is the one thing you would wish to change about me \n Or \n Kneel and fake a proposal to one of the players (I choose)",
      "Describe the worst outfit you could ever see on me \n Or \n Twerk for a minute",
      "What is your say on “first-date” sex \n Or \n Down a shot of the drink I order for",
      "Who of your children/siblings is your least favorite \n Or \n Make up a rumor about your parents",
      "what is your run-to activity when you’re mad at someone or something \n Or \n Market an object to the person on your right until they’re convinced",
      "single parent or widow,who do you think is has a less load of work \n Or \n Eat a spoonful of salt",
      "What has been your best date experience \n Or \n Do your ex’s worst impression",
      "How would you prefer to find out about your partner’s affair,catch him/her red handed \n Or \n Through rumors or kiss your neighbor to the right",
      "Would you rather have sex with someone else in secret or not have sex but everyone thinks you did \n 0r \n Comment “no, you’re wrong” on your partner’s post",
      "If your friends caught your partner cheating, would you want them to call you first or they deal with the situation themselves and tell you after \n Or \n Close your eyes,slowly describe your biggest fantasy",
      "Calm and collected or dramatic and talkative, which mood do you prefer \n Or \n Don’t say the words ‘yes’ or ‘no’ for the next two rounds",
      "what were your thoughts about me/us when we first met \n Or \n Imitate a Chinese accent for 30secs",
      "Sex in the car or sex in the washrooms,which one would you prefer \n Or \n Fake having an orgasm",
      "Have you ever ignored your boss at work when he/she is passing on important information and why",
      "Cooking at home \n Or \n Date night at your favorite restaurant ? Smack the butt of the person to your left",
      "What is your run-to word when your children make you mad \n Or \n Do an impression of your partner",
      "Describe your sexiest outfit on your partner \n Or \n Give me your phone and I send one text to anyone I want",
      "When was the last time you had sex \n Or \n Make a poem using the words “ok” and “yes”",
      "At what age did you lose your virginity \n Or \n Pretend that you just met someone new that you like on the plane ",
      "Does body count matter and why Or With your eyes closed,get a massage from a player and guess who did",
      "what advice would you give to your younger self now \n Or \n get blindfolded, let a player give you a lap dance and then guess who did.",
      "How do you get your jobs....through connections or your CV speaks \n Or \n Spank yourself 5 times",
      "What has been your worst work- experience \n Or \n Tell a funny knock-knock joke",
      "Does size matter to you \n Or \n show us everything in your pockets or purse/bag",
      "Have you ever cheated in a relationship \n Or \n Do 20 push ups",
      "Describe your first time getting drunk \n Or \n Take a shot of vodka",
      "Describe your first time getting drunk \n Or \n Take a shot of vodka",
      "Tongue kisser or lips,what’s your type \n Or \n be a blanket for someone in the room and warm them up until your next round",
      "State your 5 complete turn offs in a person of the opposite sex \n Or \n choose one person in the room and smell their feet for 10secs",
      "Talk about your most romantic moment in life so far \n Or \n Lift up the smallest person in the game",
      "Who would you pick from your kids to exchange with a personality \n Or \n Give a concert while playing an invisible guitar",
      "What has been your most embarrassing moment in life \n Or \n Whisper everything you say until your next round",
      "f you were to be famous for something, what would you be famous for \n Or \n Do your best dance move",
      "What is the worst rumor you ever heard",
      "What is the worst rumor you ever heard about yourself \n Or \n Drink a shot from a female’s chest",
      "Whats your favorite brand and why \n Or \n Smell a player’s armpit (players choose who)",
      "Have you ever been caught cheating on your partner \n Or \n Close your eyes and let the players put something edible in your mouth.you must eat it",
      "How would you rate your looks on a scale of 1-10 \n Or \n Imitate a British accent until your next turn",
      "Describe the drunk version of yourself \n Or \n Prank call someone you know",
      "What is the maximum number of shots you have ever drank straight in a raw \n Or \n Imitate your kid’s most annoying impression",
      "Have you ever faked being someone else to get something you wanted \n Or \n Talk with a wierd accent for the next two rounds",
      "Describe yourself at the age of 60. \n Or \n Call one of your siblings and just breathe in the phone",
      "What is your usual excuse when you get stopped by the traffic police \n Or \n Choose two people who have to kiss each other on the lips",
      "What has been your worst breakup ever with your ex. \n Or \n Fake in-bed noises"
    ];
  }
}