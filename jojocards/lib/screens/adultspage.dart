// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:jojocards/shared/xd_component11.dart';
import 'package:stacked_card_carousel/stacked_card_carousel.dart';

class AdultsPage extends StatefulWidget {
  const AdultsPage({Key key}) : super(key: key);

  @override
  State<AdultsPage> createState() => _AdultsPageState();
}

class _AdultsPageState extends State<AdultsPage> with TickerProviderStateMixin {
  List<String> welcomeImages = Adults.getAdultsDares();
  @override
  Widget build(BuildContext context) {
    CardController controller;
    return Scaffold(
        backgroundColor: const Color(0xffffffff),
        appBar: AppBar(
          title: Text("Adults", style: TextStyle(fontSize: 25)),
          backgroundColor: Color(0xFFA9443F),
          centerTitle: true,
        ),
        body: Container(
        padding: EdgeInsets.all(40.0),
        
        child: Card(
          child: Stack(
            children: <Widget>[
              
               for(var item in welcomeImages )
              Pinned.fromPins(
                Pin(start: -21.0, end: -12.8),
                Pin(size: 271.4, middle: 0.5041),
                child: Stack(
                  children: <Widget>[
                    Pinned.fromPins(
                      Pin(start: 0.0, end: 0.0),
                      Pin(start: 0.0, end: 0.0),
                      child: SvgPicture.string(
                        _svg_thxbg3,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(start: 4.1, end: 10.4),
                      Pin(start: 5.2, end: 0.0),
                      child: SvgPicture.string(
                        _svg_fpwz8u,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(start: 51.2, end: 56.8),
                      Pin(start: 33.6, end: 25.0),
                      child: XDComponent11(key: null,),
                    ),
                    Pinned.fromPins(
                      Pin(start: 4.1, end: 10.4),
                      Pin(start: 4.8, end: 0.6),
                      child: SvgPicture.string(
                        _svg_oyxyze,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 27.0, start: 31.0),
                      Pin(size: 27.0, middle: 0.6424),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                          color: const Color(0xffbebdce),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 8.0, start: 56.0),
                      Pin(size: 8.0, middle: 0.7023),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                          color: const Color(0xffbebdce),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 12.0, start: 63.0),
                      Pin(size: 12.0, end: 11.4),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                          color: const Color(0xffbebdce),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 45.7, middle: 0.1843),
                      Pin(size: 66.4, middle: 0.7767),
                      child: SvgPicture.string(
                        _svg_e2enmm,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 11.0, middle: 0.7919),
                      Pin(size: 11.0, middle: 0.192),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                          color: const Color(0xffbebdce),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 11.0, end: 56.8),
                      Pin(size: 11.0, middle: 0.2611),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                          color: const Color(0xffbebdce),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 17.1, middle: 0.683),
                      Pin(size: 12.7, middle: 0.1659),
                      child: SvgPicture.string(
                        _svg_qartk4,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 7.0, middle: 0.6552),
                      Pin(size: 7.0, middle: 0.1967),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                          color: const Color(0xffbebdce),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 53.0, start: 31.0),
                      Pin(size: 71.0, start: 29.0),
                      child: Text(
                        'Truth or\nDare',
                        style: TextStyle(
                          fontFamily: 'Century Gothic Bold',
                          fontWeight: FontWeight.w800,
                          fontSize: 15,
                          color: Colors.black,
                          height: 1,
                        ),
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 333.0, start: 59.0),
                      Pin(size: 86.0, middle: 0.5717),
                      child: Text.rich(
                        TextSpan(
                          style: TextStyle(
                            fontFamily: 'Century Gothic Bold',
                            fontSize: 18,
                            color: Colors.black,
                            height: 0.8888888888888888,
                          ),
                          children: [
                            TextSpan(
                              text:
                                  item
                            ),
                            
                          ],
                        ),
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ],
           
          ),
        ),
      ),
     );
  }
}

class Adults {
  static List<String> getAdultsDares() {
    return [
      "Have you ever thought of cheating on your partner? \n Or \n Mime your dream job",
      "What is your guilty pleasure? \n Or \n Stand on one leg until your next turn.",
      "What is the most useless piece of knowledge you know? \n Or \n Down a shot of what the person on your left is drinking.",
      'Have you ever tried to take a sexy nude picture of yourself? \n Or \n Write a Facebook post (or other social media ) using your toes',
      "Do you prefer it with the lights on or off? \n Or \n Quickly spell catastrophe in 3 seconds.",
      "What is the one thing you would wish to change about me? \n Or \n Kneel and fake a proposal to one of the players (I choose).",
      "Describe the worst outfit you could ever see on me? \n Or \n Twerk for a minute.",
      "What is your say on “first-date” sex? \n Or \n Down a shot of the drink I order for.",
      "Who of your children/siblings is your least favorite? \n Or \n Make up a rumor about your parents.",
      "What is your run-to activity when you’re mad at someone or something? \n Or \n Market an object to the person on your right until they’re convinced.",
      "Single parent or widow,who do you think is has a less load of work? \n Or \n Eat a spoonful of salt.",
      "What has been your best date experience? \n Or \n Do your ex’s worst impression.",
      "How would you prefer to find out about your partner’s affair,catch him/her red handed? \n Or \n Through rumors or kiss your neighbor to the right.",
      "Would you rather have sex with someone else in secret or not have sex but everyone thinks you did? \n 0r \n Comment “no, you’re wrong” on your partner’s post.",
      "If your friends caught your partner cheating, would you want them to call you first or they deal with the situation themselves and tell you after? \n Or \n Close your eyes,slowly describe your biggest fantasy.",
      "Calm and collected or dramatic and talkative, which mood do you prefer? \n Or \n Don’t say the words ‘yes’ or ‘no’ for the next two rounds.",
      "What were your thoughts about me/us when we first met? \n Or \n Imitate a Chinese accent for 30 secs.",
      "Sex in the car or sex in the washrooms,which one would you prefer? \n Or \n Fake having an orgasm.",
      "Have you ever ignored your boss at work when he/she is passing on important information and why.",
      "Cooking at home? \n Or \n Date night at your favorite restaurant? Smack the butt of the person to your left.",
      "What is your run-to word when your children make you mad? \n Or \n Do an impression of your partner.",
      "Describe your sexiest outfit on your partner. \n Or \n Give me your phone and I send one text to anyone I want.",
      "When was the last time you had sex? \n Or \n Make a poem using the words “ok” and “yes”.",
      "At what age did you lose your virginity? \n Or \n Pretend that you just met someone new that you like on the plane.",
      "Does body count matter and why \n Or \n With your eyes closed,get a massage from a player and guess who did.",
      "what advice would you give to your younger self now? \n Or \n Get blindfolded, let a player give you a lap dance and then guess who did.",
      "How do you get your jobs....through connections or your CV speaks? \n Or \n Spank yourself 5 times.",
      "What has been your worst work-experience? \n Or \n Tell a funny knock-knock joke.",
      "Does size matter to you? \n Or \n Show us everything in your pockets or purse/bag.",
      "Have you ever cheated in a relationship? \n Or \n Do 20 push ups.",
      "Describe your first time getting drunk? \n Or \n Take a shot of vodka.",
      "Tongue kisser or lips,what’s your type? \n Or \n Be a blanket for someone in the room and warm them up until your next round.",
      "State your 5 complete turn offs in a person of the opposite sex. \n Or \n Choose one person in the room and smell their feet for 10secs.",
      "Talk about your most romantic moment in life so far. \n Or \n Lift up the smallest person in the game.",
      "Who would you pick from your kids to exchange with a personality? \n Or \n Give a concert while playing an invisible guitar.",
      "What has been your most embarrassing moment in life ?\n Or \n Whisper everything you say until your next round.",
      "If you were to be famous for something, what would you be famous for? \n Or \n Do your best dance move.",
      "What is the worst rumor you ever heard about yourself? \n Or \n Drink a shot from a female’s chest.",
      "Whats your favorite brand and why? \n Or \n Smell a player’s armpit (players choose who).",
      "Have you ever been caught cheating on your partner? \n Or \n Close your eyes and let the players put something edible in your mouth.you must eat it.",
      "How would you rate your looks on a scale of 1-10? \n Or \n Imitate a British accent until your next turn.",
      "Describe the drunk version of yourself? \n Or \n Prank call someone you know.",
      "What is the maximum number of shots you have ever drank straight in a row? \n Or \n Imitate your kid’s most annoying impression.",
      "Have you ever faked being someone else to get something you wanted? \n Or \n Talk with a wierd accent for the next two rounds.",
      "Describe yourself at the age of 60? \n Or \n Call one of your siblings and just breathe in the phone.",
      "What is your usual excuse when you get stopped by the traffic police? \n Or \n Choose two people who have to kiss each other on the lips.",
      "What has been your worst breakup ever with your ex? \n Or \n Fake in-bed noises."
    ];
  }
}

const String _svg_thxbg3 =
    '<svg viewBox="225.0 282.0 461.8 271.4" ><path transform="translate(225.0, 282.0)" d="M 0 0 L 461.7957458496094 0 L 461.7957458496094 271.4078369140625 L 0 271.4078369140625 L 0 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fpwz8u =
    '<svg viewBox="229.1 287.2 447.3 266.2" ><path transform="translate(229.09, 287.21)" d="M 0 0 L 447.2748107910156 0 L 447.2748107910156 266.1939392089844 L 0 266.1939392089844 L 0 0 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_oyxyze =
    '<svg viewBox="229.1 286.8 447.3 266.0" ><path transform="translate(-0.45, 0.0)" d="M 486.5018920898438 323.5155944824219 C 486.5018920898438 323.5155944824219 496.4545593261719 326.304443359375 511.0909423828125 316.2646789550781 C 525.727294921875 306.2249450683594 527.37451171875 303.2521667480469 542.9533081054688 302.4710083007812 C 558.5320434570312 301.6898498535156 563.45166015625 303.4474487304688 563.2466430664062 304.8144836425781 C 563.0416870117188 306.1814880371094 551.5626220703125 311.2590026855469 552.7925415039062 314.774169921875 C 554.0223999023438 318.2893676757812 559.3518676757812 321.0233764648438 566.9363403320312 318.679931640625 C 574.5208129882812 316.3364868164062 582.1051635742188 313.6541442871094 591.3294677734375 316.2646789550781 C 600.5537719726562 318.8752136230469 608.7530517578125 329.8114013671875 608.1381225585938 333.3265991210938 C 607.523193359375 336.8417663574219 604.0383911132812 342.1145629882812 592.9692993164062 342.3098449707031 C 581.9002075195312 342.505126953125 549.5126953125 341.9192810058594 537.4186401367188 347.5826416015625 C 525.3246459960938 353.2460021972656 517.5352783203125 358.128173828125 520.2000732421875 367.5020446777344 C 522.8648071289062 376.8759155273438 530.039306640625 379.2193603515625 540.698486328125 371.0172424316406 C 551.357666015625 362.8151245117188 556.89208984375 358.7140808105469 566.1163330078125 359.2999267578125 C 575.3406982421875 359.8858032226562 592.1494140625 362.6198425292969 598.9138793945312 356.37060546875 C 605.6782836914062 350.1213684082031 612.8527221679688 339.3804931640625 617.9773559570312 335.6700439453125 C 623.1019287109375 331.9595642089844 638.270751953125 330.9831237792969 650.1597900390625 332.1548461914062 C 662.048828125 333.3265991210938 666.55859375 335.4747314453125 665.943603515625 340.9428100585938 C 665.3286743164062 346.410888671875 661.6389770507812 352.8554077148438 655.8994140625 358.5187683105469 C 650.1597900390625 364.1821594238281 649.7498779296875 364.18212890625 645.240234375 366.5256042480469 C 640.7305297851562 368.8690795898438 637.8607788085938 375.7041625976562 653.0296020507812 374.7277221679688 C 668.198486328125 373.7512817382812 664.713623046875 375.1182861328125 668.6083374023438 372.9701232910156 C 672.5030517578125 370.8219604492188 676.602783203125 370.236083984375 676.602783203125 370.236083984375 L 676.8077392578125 552.8307495117188 L 306.8118286132812 552.8307495117188 C 306.8118286132812 552.8307495117188 300.6622924804688 549.7061157226562 290.6180725097656 548.9249877929688 C 280.5738525390625 548.143798828125 273.8094177246094 544.238037109375 271.5545654296875 539.5511474609375 C 269.2997436523438 534.8642578125 272.7844543457031 530.1773071289062 275.2442932128906 528.419677734375 C 277.7040710449219 526.662109375 285.4935302734375 524.1233520507812 294.5127868652344 527.2479858398438 C 303.5320739746094 530.37255859375 326.0802917480469 542.87109375 342.2739868164062 545.4097900390625 C 358.4677429199219 547.9485473632812 376.50634765625 542.8710327148438 384.5007019042969 530.56787109375 C 392.4950866699219 518.2647094726562 391.4701538085938 514.74951171875 389.8302917480469 510.84375 C 388.1903991699219 506.9379577636719 382.4508361816406 502.2510070800781 375.4813842773438 504.9850463867188 C 368.511962890625 507.7191162109375 359.2876586914062 516.1165771484375 343.9139099121094 521.1940307617188 C 328.5401000976562 526.271484375 312.9613342285156 525.8809814453125 305.376953125 523.1469116210938 C 297.7925109863281 520.4129028320312 292.2579345703125 516.702392578125 287.5433349609375 509.6719970703125 C 282.8287048339844 502.6416320800781 284.2635498046875 498.7358093261719 280.5738525390625 494.0489196777344 C 276.8841552734375 489.3620300292969 270.7346496582031 488.3855590820312 263.7651672363281 488.5808715820312 C 256.7957458496094 488.7761535644531 245.3166198730469 486.0421447753906 239.1670989990234 481.3551940917969 C 233.017578125 476.6682739257812 229.5328521728516 471.9813537597656 229.5328521728516 471.9813537597656 L 229.5328521728516 286.7889709472656 L 461.5523681640625 286.7889709472656 C 461.5523681640625 286.7889709472656 474.6936950683594 313.7976684570312 480.2282409667969 318.679931640625 C 485.7627868652344 323.5621948242188 486.5018920898438 323.5155944824219 486.5018920898438 323.5155944824219 Z" fill="#f9f9fb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_e2enmm =
    '<svg viewBox="301.7 441.2 45.7 66.4" ><path transform="translate(-10.36, -47.59)" d="M 356.7795104980469 504.0413208007812 C 356.7795104980469 504.0413208007812 351.7391052246094 509.2178955078125 346.2900085449219 513.1685180664062 C 340.8409118652344 517.119140625 340.2959899902344 522.7044677734375 341.5220336914062 527.336181640625 C 342.7480773925781 531.9678955078125 346.0175170898438 537.1445922851562 345.6088562011719 541.9125366210938 C 345.2001953125 546.6804809570312 340.2959899902344 552.1295166015625 336.6178588867188 553.7642822265625 C 332.9397277832031 555.3990478515625 323.13134765625 556.3526611328125 319.1807556152344 552.8107299804688 C 315.2301635742188 549.268798828125 311.0071105957031 545.3182373046875 312.233154296875 536.7359008789062 C 313.4591979980469 528.153564453125 319.8619079589844 513.9859619140625 322.1777648925781 509.0817260742188 C 324.4936218261719 504.1775207519531 330.2151794433594 495.86767578125 332.9397277832031 493.0068969726562 C 335.6642761230469 490.1461181640625 340.5684509277344 488.9200744628906 346.2900085449219 488.7838439941406 C 352.0115661621094 488.6476135253906 356.5070190429688 494.6416625976562 357.4606323242188 498.7284545898438 C 358.4142456054688 502.8152465820312 356.7795104980469 504.0413208007812 356.7795104980469 504.0413208007812 Z" fill="#bebdce" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qartk4 =
    '<svg viewBox="528.7 324.9 17.1 12.7" ><path transform="translate(-38.39, 0.0)" d="M 584.2064208984375 326.2124633789062 C 584.2064208984375 326.2124633789062 580.0147705078125 336.7963256835938 574.7752685546875 337.5298461914062 C 569.5357666015625 338.2633666992188 567.7542724609375 335.7483825683594 567.3351440429688 333.1286315917969 C 566.916015625 330.5088806152344 566.7064819335938 327.6795654296875 571.5267944335938 325.6885375976562 C 576.3471069335938 323.697509765625 584.2064208984375 326.2124633789062 584.2064208984375 326.2124633789062 Z" fill="#bebdce" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
