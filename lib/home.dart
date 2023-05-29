import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:readmore/readmore.dart';
import 'package:badges/badges.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        actions: [
          Center(
            child:Badge(
              badgeContent: Text('3'),
              badgeAnimation: BadgeAnimation.slide(animationDuration: Duration(microseconds: 800)),
              child: Icon(Icons.shopping_bag_outlined),
            ),
          ),
          SizedBox(width: 20,),
        ],
        title: Text('Home Page'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Center(
              child: Badge(
                badgeContent: Text('1'),
                badgeAnimation: BadgeAnimation.slide(animationDuration: Duration(microseconds: 800)),
                child: Icon(Icons.settings),
              ),
            ),

            // SizedBox(height: 10,),
            // Text('lorem Text Show More and Show less option', style: TextStyle(color: Colors.red),),
            // SizedBox(height: 30,),
            // ReadMoreText(
            //   "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsumand more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsumand more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsumand more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsumand more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsumand more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsumand more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsumand more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsumand more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsumand more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsumand more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsumand more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsumand more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsumand more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsumand more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsumand",
            //   trimLines: 2,
            //   trimMode: TrimMode.Line,
            //   trimCollapsedText: 'Show All',
            //   moreStyle: TextStyle(color: Colors.red),
            //   style: TextStyle(color: Colors.purple),
            //   colorClickableText: Colors.green,
            // ),
            Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
            const SizedBox(width: 20.0, height: 100.0),
            const Text(
            'Be',
            style: TextStyle(fontSize: 43.0),
            ),
            const SizedBox(width: 20.0, height: 100.0),
            DefaultTextStyle(
            style: const TextStyle(
            fontSize: 40.0,
            fontFamily: 'Horizon',
            ),
            child: AnimatedTextKit(
            animatedTexts: [
            RotateAnimatedText('AWESOME'),
            RotateAnimatedText('OPTIMISTIC'),
            RotateAnimatedText('DIFFERENT'),
    ],
    onTap: () {
    print("Tap Event");
    },
    ),
    ),
    ],
    ),
            SizedBox(
              width: 250.0,
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Bobbers',
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText('It is not enough to do your best,'),
                    TyperAnimatedText('you must know what to do,'),
                    TyperAnimatedText('and then do your best'),
                    TyperAnimatedText('- W.Edwards Deming'),
                  ],
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),
            ),
            SizedBox(
              width: 250.0,
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 70.0,
                  fontFamily: 'Canterbury',
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    ScaleAnimatedText('Think'),
                    ScaleAnimatedText('Build'),
                    ScaleAnimatedText('Ship'),
                  ],
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
