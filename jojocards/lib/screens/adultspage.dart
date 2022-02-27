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
        body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.9,
          child: TinderSwapCard(
            swipeUp: true,
            swipeDown: true,
            orientation: AmassOrientation.BOTTOM,
            totalNum: welcomeImages.length,
            stackNum: 2,
            swipeEdge: 3.0,
            maxWidth: MediaQuery.of(context).size.width * 0.9,
            maxHeight: MediaQuery.of(context).size.width * 0.9,
            minWidth: MediaQuery.of(context).size.width * 0.8,
            minHeight: MediaQuery.of(context).size.width * 0.8,
            cardBuilder: (context, index) => Card(
              color: Colors.transparent,
              shadowColor: Colors.transparent,
              child: Container(
                padding: EdgeInsets.only(bottom: 99.0),
                child: Stack(
                  children: <Widget>[
                    Pinned.fromPins(
                      Pin(size: 266.2, middle: 0.4612),
                      Pin(size: 447.3, middle: 0.499),
                      child: SvgPicture.string(
                        _svg_h6xymu,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 353.8, middle: 0.4383),
                      Pin(size: 212.8, middle: 0.4988),
                      child: Transform.rotate(
                        angle: -1.5708,
                        child: XDComponent11(),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 266.7, middle: 0.46),
                      Pin(size: 448.8, middle: 0.4998),
                      child: SvgPicture.string(
                        _svg_sjwoes,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 27.0, middle: 0.3996),
                      Pin(size: 27.0, middle: 0.7045),
                      child: Transform.rotate(
                        angle: -1.5708,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xffbebdce),
                          ),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 8.0, middle: 0.3576),
                      Pin(size: 8.0, middle: 0.6834),
                      child: Transform.rotate(
                        angle: -1.5708,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xffbebdce),
                          ),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 12.0, middle: 0.1996),
                      Pin(size: 12.0, middle: 0.6743),
                      child: Transform.rotate(
                        angle: -1.5708,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xffbebdce),
                          ),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 66.4, middle: 0.3278),
                      Pin(size: 45.7, middle: 0.646),
                      child: SvgPicture.string(
                        _svg_ue1bi,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 11.0, middle: 0.6966),
                      Pin(size: 11.0, middle: 0.3521),
                      child: Transform.rotate(
                        angle: -1.5708,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xffbebdce),
                          ),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 11.0, middle: 0.639),
                      Pin(size: 11.0, middle: 0.3081),
                      child: Transform.rotate(
                        angle: -1.5708,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xffbebdce),
                          ),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 12.7, middle: 0.6982),
                      Pin(size: 17.1, middle: 0.4021),
                      child: SvgPicture.string(
                        _svg_k0eug8,
                        allowDrawingOutsideViewBox: false,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 7.0, middle: 0.6805),
                      Pin(size: 7.0, middle: 0.4193),
                      child: Transform.rotate(
                        angle: -1.5708,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xffbebdce),
                          ),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 13.0, middle: 0.2338),
                      Pin(size: 15.0, middle: 0.2907),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          '',
                          style: TextStyle(
                            fontFamily: 'Papyrus',
                            fontSize: 16,
                            color: const Color(0xff707070),
                          ),
                          textHeightBehavior:
                              TextHeightBehavior(applyHeightToFirstAscent: true),

                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 226.0, middle: 0.4245),
                      Pin(size: 165.0, middle: 0.5105),
                      child: Text(
                        '${welcomeImages[index]}',
                        style: TextStyle(
                          inherit: true,
                          fontFamily: 'Century Gothic Bold',
                          fontSize: 16,
                          color: Colors.black,
                          letterSpacing: 0.032,
                          fontWeight: FontWeight.w500,
                          height: 1,
                        ),
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
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

class Adults {
  static List<String> getAdultsDares() {
    return [
      "Have you ever thought of cheating on your partner? \n Or \n Mime your dream job",
      "What is your guilty pleasure? \n Or \n Stand on one leg until your next turn.",
      "What is the most useless piece of knowledge you know? \n Or \n Down a shot of what the person on your left is drinking.",
      'Have you ever tried to take a sexy nude picture of yourself? \n Or \n Write a Facebook post (or other social media) using your toes',
      "Do you prefer it with the lights on or off? \n Or \n Quickly spell catastrophe in 3 seconds.",
      "What is the one thing you would wish to change about me? \n Or \n Kneel and fake a proposal to one of the players (I choose).",
      "Describe the worst outfit you could ever see on me? \n Or \n Twerk for a minute.",
      "What is your say on “first-date” sex? \n Or \n Down a shot of the drink I order for.",
      "Who of your children/siblings is your least favorite? \n Or \n Make up a rumor about your parents.",
      "What is your run-to activity when you’re mad at someone or something? \n Or \n Market an object to the person on your right until they’re convinced.",
      "Single parent or widow,who do you think is has a less load of work? \n Or \n Eat a spoonful of salt.",
      "What has been your best date experience? \n Or \n Do your ex’s worst impression.",
      "How would you prefer to find out about your partner’s affair,catch him/her red handed? or Through rumors \n Or \n  kiss your neighbor to the right.",
      "Would you rather have sex with someone else in secret or not have sex but everyone thinks you did? \n 0r \n Comment “no, you’re wrong” on your partner’s post.",
      "If your friends caught your partner cheating, would you want them to call you first or they deal with the situation themselves and tell you after? \n Or \n Close your eyes,slowly describe your biggest fantasy.",
      "Calm and collected or dramatic and talkative, which mood do you prefer? \n Or \n Don’t say the words ‘yes’ or ‘no’ for the next two rounds.",
      "What were your thoughts about me/us when we first met? \n Or \n Imitate a Chinese accent for 30 secs.",
      "Sex in the car or sex in the washrooms,which one would you prefer? \n Or \n Fake having an orgasm.",
      "Have you ever ignored your boss at work when he/she is passing on important information and why.",
      "Cooking at home? Or Date night at your favorite restaurant? \n Or \n Smack the butt of the person to your left.",
      "What is your run-to word when your children make you mad? \n Or \n Do an impression of your partner.",
      "Describe your sexiest outfit on your partner? \n Or \n Give me your phone and I send one text to anyone I want.",
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
      "State your 5 complete turn offs in a person of the opposite sex? \n Or \n Choose one person in the room and smell their feet for 10secs.",
      "Talk about your most romantic moment in life so far? \n Or \n Lift up the smallest person in the game.",
      "Who would you pick from your kids to exchange with a personality? \n Or \n Give a concert while playing an invisible guitar.",
      "What has been your most embarrassing moment in life? \n Or \n Whisper everything you say until your next round.",
      "If you were to be famous for something, what would you be famous for? \n Or \n Do your best dance move.",
      "What is the worst rumor you ever heard about yourself? \n Or \n Drink a shot from a female’s chest.",
      "Whats your favorite brand and why? \n Or \n Smell a player’s armpit (players choose who).",
      "Have you ever been caught cheating on your partner? \n Or \n Close your eyes and let the players put something edible in your mouth.you must eat it.",
      "How would you rate your looks on a scale of 1-10? \n Or \n Imitate a British accent until your next turn.",
      "Describe the drunk version of yourself? \n Or \n Prank call someone you know.",
      "What is the maximum number of shots you have ever drank straight in a row? \n Or \n Imitate your kid’s most annoying impression.",
      "Have you ever faked being someone else to get something you wanted? \n Or \n Talk with a weird accent for the next two rounds.",
      "Describe yourself at the age of 60? \n Or \n Call one of your siblings and just breathe in the phone.",
      "What is your usual excuse when you get stopped by the traffic police? \n Or \n Choose two people who have to kiss each other on the lips.",
      "What has been your worst breakup ever with your ex? \n Or \n Fake in-bed noises.",
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


const String _svg_h6xymu =
    '<svg viewBox="74.6 238.9 266.2 447.3" ><path transform="matrix(0.0, -1.0, 1.0, 0.0, 74.62, 686.17)" d="M 0 266.1939392089844 L 447.2748107910156 266.1939392089844 L 447.2748107910156 0 L 0 0 L 0 266.1939392089844 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sjwoes =
    '<svg viewBox="74.2 238.5 266.7 448.8" ><path transform="matrix(0.0, -1.0, 1.0, 0.0, 74.19, 687.26)" d="M 257.8229064941406 229.8761444091797 C 257.8229064941406 229.8761444091797 267.80859375 227.0804901123047 282.4936218261719 237.1448059082031 C 297.1786193847656 247.2090911865234 298.831298828125 250.1891479492188 314.4618835449219 250.9722290039062 C 330.0923767089844 251.7552947998047 335.0283508300781 249.9933929443359 334.8226318359375 248.6230163574219 C 334.6170043945312 247.2526702880859 323.0997924804688 242.1627349853516 324.3338317871094 238.6389617919922 C 325.5677490234375 235.1151580810547 330.9149169921875 232.3744812011719 338.5245971679688 234.7236480712891 C 346.13427734375 237.0728302001953 353.7438049316406 239.76171875 362.998779296875 237.1448059082031 C 372.2537536621094 234.5278930664062 380.4802551269531 223.56494140625 379.86328125 220.0411529541016 C 379.2463073730469 216.5173797607422 375.7499389648438 211.231689453125 364.64404296875 211.0359344482422 C 353.5381774902344 210.8401641845703 321.0430603027344 211.4274444580078 308.9088134765625 205.7502288818359 C 296.774658203125 200.0730133056641 288.9593811035156 195.1789093017578 291.6330261230469 185.7820892333984 C 294.3066101074219 176.3852844238281 301.5049743652344 174.0361175537109 312.1995544433594 182.25830078125 C 322.8941650390625 190.4804840087891 328.4469909667969 194.591552734375 337.7018737792969 194.0042724609375 C 346.9568786621094 193.4169769287109 363.8214416503906 190.6762390136719 370.6083984375 196.9407806396484 C 377.395263671875 203.2052917480469 384.5935668945312 213.9724426269531 389.7351989746094 217.6919708251953 C 394.8768005371094 221.4115295410156 410.0960388183594 222.3903656005859 422.0245666503906 221.2157592773438 C 433.953125 220.0411529541016 438.4778442382812 217.8877563476562 437.86083984375 212.4063110351562 C 437.2438659667969 206.9248352050781 433.5419006347656 200.4645538330078 427.7832641601562 194.787353515625 C 422.0245666503906 189.110107421875 421.6133117675781 189.1101379394531 417.0886840820312 186.7609252929688 C 412.56396484375 184.4117279052734 409.6846923828125 177.5599060058594 424.9039001464844 178.5387420654297 C 440.1231994628906 179.517578125 436.6267700195312 178.147216796875 440.534423828125 180.3006439208984 C 444.4420776367188 182.4540557861328 448.555419921875 183.0413665771484 448.555419921875 183.0413665771484 L 448.7610778808594 0 L 77.53575134277344 0 C 77.53575134277344 0 71.36578369140625 3.132277727127075 61.28818893432617 3.915317058563232 C 51.21059417724609 4.698416709899902 44.42368316650391 8.613733291625977 42.16133880615234 13.31208896636963 C 39.89902496337891 18.01044654846191 43.39531326293945 22.7088623046875 45.86332321166992 24.47079086303711 C 48.33127593994141 26.2326602935791 56.14662170410156 28.77762794494629 65.19584655761719 25.64535140991211 C 74.24509429931641 22.51313400268555 96.86823272705078 9.984021186828613 113.1157379150391 7.439114093780518 C 129.3632965087891 4.894145965576172 147.4618530273438 9.98408317565918 155.4827575683594 22.31734275817871 C 163.5037231445312 34.65060043334961 162.4753723144531 38.17440032958984 160.8300476074219 42.08971786499023 C 159.1847229003906 46.00506210327148 153.4260864257812 50.7034797668457 146.4334716796875 47.96275329589844 C 139.4409027099609 45.22199630737305 130.1859436035156 36.80399322509766 114.7611083984375 31.71411514282227 C 99.33621978759766 26.62423896789551 83.7056884765625 27.01569747924805 76.09610748291016 29.75645637512207 C 68.48646545410156 32.49715423583984 62.93349838256836 36.21674346923828 58.2032356262207 43.26433563232422 C 53.47293853759766 50.3119010925293 54.91255187988281 54.22727584838867 51.21059417724609 58.92563629150391 C 47.50863647460938 63.62398910522461 41.33869934082031 64.60285186767578 34.34606170654297 64.40705871582031 C 27.35348129272461 64.2113037109375 15.83621311187744 66.95199584960938 9.666257858276367 71.65042114257812 C 3.496304750442505 76.34880065917969 0 81.04718780517578 0 81.04718780517578 L 0 266.692626953125 L 232.7904510498047 266.692626953125 C 232.7904510498047 266.692626953125 245.9754333496094 239.6178588867188 251.5283660888672 234.7236480712891 C 257.081298828125 229.8294525146484 257.8229064941406 229.8761444091797 257.8229064941406 229.8761444091797 Z" fill="#f9f9fb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ue1bi =
    '<svg viewBox="118.5 568.7 66.4 45.7" ><path transform="matrix(0.0, -1.0, 1.0, 0.0, 118.52, 614.42)" d="M 44.7622184753418 51.18744659423828 C 44.7622184753418 51.18744659423828 39.7218132019043 46.01087188720703 34.2727165222168 42.06024932861328 C 28.8236198425293 38.10962677001953 28.2786979675293 32.52429962158203 29.50474166870117 27.89258575439453 C 30.73078536987305 23.26087188720703 34.00022506713867 18.08417510986328 33.5915641784668 13.31623077392578 C 33.18290328979492 8.548286437988281 28.2786979675293 3.099250793457031 24.60056686401367 1.464485049247742 C 20.92243576049805 -0.1702805757522583 11.11405563354492 -1.123893857002258 7.16346263885498 2.418037414550781 C 3.212870597839355 5.959968566894531 -1.01018238067627 9.910530090332031 0.2158613204956055 18.49286651611328 C 1.44190502166748 27.07520294189453 7.84461498260498 41.24280548095703 10.16047286987305 46.14704132080078 C 12.4763298034668 51.05124664306641 18.1978874206543 59.36109161376953 20.92243576049805 62.22187042236328 C 23.6469841003418 65.08264923095703 28.5511589050293 66.30869293212891 34.2727165222168 66.44492340087891 C 39.9942741394043 66.58115386962891 44.48972702026367 60.58710479736328 45.44334030151367 56.50031280517578 C 46.39695358276367 52.41352081298828 44.7622184753418 51.18744659423828 44.7622184753418 51.18744659423828 Z" fill="#bebdce" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_k0eug8 =
    '<svg viewBox="289.9 365.5 12.7 17.1" ><path transform="matrix(0.0, -1.0, 1.0, 0.0, 289.94, 382.57)" d="M 17.07109832763672 11.44654750823975 C 17.07109832763672 11.44654750823975 12.8794469833374 0.8626850843429565 7.639945507049561 0.1291645616292953 C 2.400443553924561 -0.6043559312820435 0.618949294090271 1.910628199577332 0.1998208910226822 4.530379295349121 C -0.2193075269460678 7.150130271911621 -0.4288412034511566 9.979445457458496 4.391471385955811 11.97047328948975 C 9.211783409118652 13.961501121521 17.07109832763672 11.44654750823975 17.07109832763672 11.44654750823975 Z" fill="#bebdce" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
