import 'package:flutter/material.dart';

class SsHomePageBody extends StatelessWidget {
  const SsHomePageBody({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            height: 400,
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
            child: Image.asset(
              'assets/flutter-bird.png',
              fit: BoxFit.cover,
              color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.1),
              colorBlendMode: BlendMode.darken,
            ),
          ),
          const SizedBox(height: 20), // Space between image and text
          RichText(
            text: TextSpan(
              text: 'I AM ',
              style: DefaultTextStyle.of(context).style.copyWith(fontSize: 40),
              children: const <TextSpan>[
                TextSpan(
                  text: 'AANISH RAHMANI \n ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.deepPurple,
                  ),
                ),
                TextSpan(
                  text:
                      'I am a Flutter engineer with a strong passion for building cross-platform mobile applications. Currently pursuing my B.Tech, I am also expanding',
                  style: TextStyle(fontSize: 20),
                ),
                // TextSpan(
                //   text:
                //       'mobile applications. Currently pursuing my B.Tech, I am also expanding \n',
                //   style: TextStyle(fontSize: 20),
                // ),
                TextSpan(
                  text:
                      'my skills in machine learning, exploring its potential to create intelligent and data-driven solutions.  ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                TextSpan(
                  text:
                      'I am eager to combine both fields to innovate and develop impactful projects. \n',
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
