import 'package:flutter/material.dart';

class LsHomePageBody extends StatelessWidget {
  const LsHomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: RichText(
            text: TextSpan(
              text: 'I AM ',
              style: DefaultTextStyle.of(context).style.copyWith(fontSize: 40),
              children: const <TextSpan>[
                TextSpan(
                    text: 'AANISH RAHMANI \n ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.deepPurple)),
                TextSpan(
                    text:
                        'I am a Flutter engineer with a strong passion for building cross-platform \n',
                    style: TextStyle(fontSize: 20)),
                TextSpan(
                    text:
                        'mobile applications. Currently pursuing my B.Tech, I am also expanding \n',
                    style: TextStyle(fontSize: 20)),
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
        ),
        const SizedBox(width: 150),
        Flexible(
          child: Container(
            height: 400,
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
            child: Image.asset(
              'assets/myself.png',
              fit: BoxFit.cover,
              color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.1),
              colorBlendMode: BlendMode.darken,
            ),
          ),
        ),
      ],
    );
  }
}
