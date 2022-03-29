// ignore_for_file: prefer_const_constructors

import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:jojocards/shared/xd_component11.dart';

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
                            color: Colors.red,
                          ),
                          textHeightBehavior:
                              TextHeightBehavior(applyHeightToFirstAscent: true),

                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 240.0, middle: 0.4245),
                      Pin(size: 115.0, middle: 0.5105),
                      child: Text(
                        '${welcomeImages[index]}',
                        style: TextStyle(
                          inherit: true,
                          fontFamily: 'Century Gothic Bold',
                          fontSize: 14,
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

class Boys {
  static List<String> getBoysDares() {
    return [
      "What have you always wanted to try but never have? \n Or \n Dance to one song for me/us.",
      "What is your most valued memory? \n Or \n Give your partner a massage anywhere you’d like.",
      "What is the one question you never want me to ask you? \n Or \n Play a song you’d like to have sex to.",
      "Which item or clothing do you think I look sexiest in? \n Or \n Passionately kiss me.",
      "What is the one question you never want me to ask you? \n Or \n Play a song you’d like to have sex to.",
      "Where do you think our most romantic kiss took place and tell me everything you remember about it? \n Or \n Describe the most exciting kiss you’ve ever had about your partner.",
      "What are you most afraid of? \n Or \n Imitate your partner doing something you think is cute.",
      "What is your biggest insecurity about our relationship? \n Or \n Describe your version of a perfect date.",
      "What were your exact thoughts when you asked me to be your girlfriend /boyfriend /when I said I do? \n Or \n Give me your best lap dance.",
      "Whats your favorite thing for us to do together? \n Or \n Without touching me, do something you think will turn me on.",
      "What kind of food turns you on? \n Or \n Pretend I’m a stranger in a club,try to pick me up and persuade me to come home with you.",
      "What are two of your guilty pleasures? \n Or \n Close your eyes,tap a random contact and text them “look behind you”.",
      "Whats something I don’t know about you? \n Or \n Text your parents /siblings “I need my pants”.",
      "What did you think of our first date? \n Or \n Pretend to be a baby until your next turn.",
      "What quality about you would you change? \n Or \n Kiss my big toe for 3 seconds.",
      "Do you like telling me what to do in bed or do you prefer to be told what to do? \n Or \nGive me 10 dollars.",
      "How have I changed since we got together? \n Or \n Open your Instagram /Facebook and like each picture on your ex’s page.",
      "What do you love mostly about me? \n Or \n Call up a delivery place and ask them if they have something they don’t supply.",
      "What is my weirdest habit? \n Or \n Slowly take off my top using only one hand.",
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
      "Rate our love story on a scale of 1-10? \n Or \n Send a weird GIF to the 10th person in your chats.",
      "Are you possessive about me / our relationship? \n Or \n Imitate any 5 emojis.",
      "Party at a club or movie night at home? \n Or \n Talk to a chair like its your celebrity crush.",
      "What is your favorite time of the year? \n Or \n Do your best impression of me when I’m angry about something.",
      "How would you spend an entire week without me? \n Or \n Reveal whatever is in your bag/pockets.",
      "What is your favorite color on me? \n Or \n Dance on an imaginary pole for 10 seconds.",
      "What would you enjoy about being stranded with me on a deserted island? \n Or \n Hum our favorite song until I rightly guess which song it is.",
      "When you randomly hear my name in public,what is that one thing that comes to your mind? \n Or \n Do 8 push ups while saying I love you.",
      "Do you like my cooking? \n Or \n Tell 5 of your favorite quotes in one breath.",
      "What is the worst gift you’ve received from me? \n Or \n Twerk on a boring song for 10mins.",
      "What is the craziest thing on your bucket list? \n Or \n Get down on one knee and propose to me with a joke.",
      "Which part of your body gets the most compliments and by who? \n Or \n Take off my shirt using your teeth only.",
      "What turns you on? \n Or \n Do 5 squats in the slowest manner possible.",
      "What is your worst addiction? \n Or \n Free style for me a song about our relationship.",
      "Have you ever lied to me? \n Or \n Give me 2 dollars.",
      "What is the most stupid excuse you’ve ever given me? \n Or \n Sing the alphabet without opening your mouth.",
      "What is your biggest turn off in a person of the opposite sex? \n Or \n Narrate a fake romantic and intimate story about a date with your celebrity crush.",
      "How far did you go on your first date in life? \n Or \n Draw the alphabet in air with your lips.",
      "Share one thing which you think could cause our break up? \n Or \n prank call your ex and tell her she’s going to be sued for theft.",
      "Have you ever accidentally sent a wrong intimate message to your colleague? \n Or \n Be blindfolded and tickled for 5minutes.",
      "Have you ever cheated in a relationship and why? \n Or \n Spank yourself 5 times.",
      "What is one of the most terrific things that we have ever done together? \n Or \n Tell a dry joke for 5minutes.",
    ];
  }
}

const String _svg_h6xymu =
    '<svg viewBox="74.6 238.9 266.2 447.3" ><path transform="matrix(0.0, -1.0, 1.0, 0.0, 74.62, 686.17)" d="M 0 266.1939392089844 L 447.2748107910156 266.1939392089844 L 447.2748107910156 0 L 0 0 L 0 266.1939392089844 Z" fill="#FF0000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sjwoes =
    '<svg viewBox="74.2 238.5 266.7 448.8" ><path transform="matrix(0.0, -1.0, 1.0, 0.0, 74.19, 687.26)" d="M 257.8229064941406 229.8761444091797 C 257.8229064941406 229.8761444091797 267.80859375 227.0804901123047 282.4936218261719 237.1448059082031 C 297.1786193847656 247.2090911865234 298.831298828125 250.1891479492188 314.4618835449219 250.9722290039062 C 330.0923767089844 251.7552947998047 335.0283508300781 249.9933929443359 334.8226318359375 248.6230163574219 C 334.6170043945312 247.2526702880859 323.0997924804688 242.1627349853516 324.3338317871094 238.6389617919922 C 325.5677490234375 235.1151580810547 330.9149169921875 232.3744812011719 338.5245971679688 234.7236480712891 C 346.13427734375 237.0728302001953 353.7438049316406 239.76171875 362.998779296875 237.1448059082031 C 372.2537536621094 234.5278930664062 380.4802551269531 223.56494140625 379.86328125 220.0411529541016 C 379.2463073730469 216.5173797607422 375.7499389648438 211.231689453125 364.64404296875 211.0359344482422 C 353.5381774902344 210.8401641845703 321.0430603027344 211.4274444580078 308.9088134765625 205.7502288818359 C 296.774658203125 200.0730133056641 288.9593811035156 195.1789093017578 291.6330261230469 185.7820892333984 C 294.3066101074219 176.3852844238281 301.5049743652344 174.0361175537109 312.1995544433594 182.25830078125 C 322.8941650390625 190.4804840087891 328.4469909667969 194.591552734375 337.7018737792969 194.0042724609375 C 346.9568786621094 193.4169769287109 363.8214416503906 190.6762390136719 370.6083984375 196.9407806396484 C 377.395263671875 203.2052917480469 384.5935668945312 213.9724426269531 389.7351989746094 217.6919708251953 C 394.8768005371094 221.4115295410156 410.0960388183594 222.3903656005859 422.0245666503906 221.2157592773438 C 433.953125 220.0411529541016 438.4778442382812 217.8877563476562 437.86083984375 212.4063110351562 C 437.2438659667969 206.9248352050781 433.5419006347656 200.4645538330078 427.7832641601562 194.787353515625 C 422.0245666503906 189.110107421875 421.6133117675781 189.1101379394531 417.0886840820312 186.7609252929688 C 412.56396484375 184.4117279052734 409.6846923828125 177.5599060058594 424.9039001464844 178.5387420654297 C 440.1231994628906 179.517578125 436.6267700195312 178.147216796875 440.534423828125 180.3006439208984 C 444.4420776367188 182.4540557861328 448.555419921875 183.0413665771484 448.555419921875 183.0413665771484 L 448.7610778808594 0 L 77.53575134277344 0 C 77.53575134277344 0 71.36578369140625 3.132277727127075 61.28818893432617 3.915317058563232 C 51.21059417724609 4.698416709899902 44.42368316650391 8.613733291625977 42.16133880615234 13.31208896636963 C 39.89902496337891 18.01044654846191 43.39531326293945 22.7088623046875 45.86332321166992 24.47079086303711 C 48.33127593994141 26.2326602935791 56.14662170410156 28.77762794494629 65.19584655761719 25.64535140991211 C 74.24509429931641 22.51313400268555 96.86823272705078 9.984021186828613 113.1157379150391 7.439114093780518 C 129.3632965087891 4.894145965576172 147.4618530273438 9.98408317565918 155.4827575683594 22.31734275817871 C 163.5037231445312 34.65060043334961 162.4753723144531 38.17440032958984 160.8300476074219 42.08971786499023 C 159.1847229003906 46.00506210327148 153.4260864257812 50.7034797668457 146.4334716796875 47.96275329589844 C 139.4409027099609 45.22199630737305 130.1859436035156 36.80399322509766 114.7611083984375 31.71411514282227 C 99.33621978759766 26.62423896789551 83.7056884765625 27.01569747924805 76.09610748291016 29.75645637512207 C 68.48646545410156 32.49715423583984 62.93349838256836 36.21674346923828 58.2032356262207 43.26433563232422 C 53.47293853759766 50.3119010925293 54.91255187988281 54.22727584838867 51.21059417724609 58.92563629150391 C 47.50863647460938 63.62398910522461 41.33869934082031 64.60285186767578 34.34606170654297 64.40705871582031 C 27.35348129272461 64.2113037109375 15.83621311187744 66.95199584960938 9.666257858276367 71.65042114257812 C 3.496304750442505 76.34880065917969 0 81.04718780517578 0 81.04718780517578 L 0 266.692626953125 L 232.7904510498047 266.692626953125 C 232.7904510498047 266.692626953125 245.9754333496094 239.6178588867188 251.5283660888672 234.7236480712891 C 257.081298828125 229.8294525146484 257.8229064941406 229.8761444091797 257.8229064941406 229.8761444091797 Z" fill="#f9f9fb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ue1bi =
    '<svg viewBox="118.5 568.7 66.4 45.7" ><path transform="matrix(0.0, -1.0, 1.0, 0.0, 118.52, 614.42)" d="M 44.7622184753418 51.18744659423828 C 44.7622184753418 51.18744659423828 39.7218132019043 46.01087188720703 34.2727165222168 42.06024932861328 C 28.8236198425293 38.10962677001953 28.2786979675293 32.52429962158203 29.50474166870117 27.89258575439453 C 30.73078536987305 23.26087188720703 34.00022506713867 18.08417510986328 33.5915641784668 13.31623077392578 C 33.18290328979492 8.548286437988281 28.2786979675293 3.099250793457031 24.60056686401367 1.464485049247742 C 20.92243576049805 -0.1702805757522583 11.11405563354492 -1.123893857002258 7.16346263885498 2.418037414550781 C 3.212870597839355 5.959968566894531 -1.01018238067627 9.910530090332031 0.2158613204956055 18.49286651611328 C 1.44190502166748 27.07520294189453 7.84461498260498 41.24280548095703 10.16047286987305 46.14704132080078 C 12.4763298034668 51.05124664306641 18.1978874206543 59.36109161376953 20.92243576049805 62.22187042236328 C 23.6469841003418 65.08264923095703 28.5511589050293 66.30869293212891 34.2727165222168 66.44492340087891 C 39.9942741394043 66.58115386962891 44.48972702026367 60.58710479736328 45.44334030151367 56.50031280517578 C 46.39695358276367 52.41352081298828 44.7622184753418 51.18744659423828 44.7622184753418 51.18744659423828 Z" fill="#bebdce" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_k0eug8 =
    '<svg viewBox="289.9 365.5 12.7 17.1" ><path transform="matrix(0.0, -1.0, 1.0, 0.0, 289.94, 382.57)" d="M 17.07109832763672 11.44654750823975 C 17.07109832763672 11.44654750823975 12.8794469833374 0.8626850843429565 7.639945507049561 0.1291645616292953 C 2.400443553924561 -0.6043559312820435 0.618949294090271 1.910628199577332 0.1998208910226822 4.530379295349121 C -0.2193075269460678 7.150130271911621 -0.4288412034511566 9.979445457458496 4.391471385955811 11.97047328948975 C 9.211783409118652 13.961501121521 17.07109832763672 11.44654750823975 17.07109832763672 11.44654750823975 Z" fill="#bebdce" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
