import 'package:flutter/material.dart';

class LsHomePageBody extends StatelessWidget {
  const LsHomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // const Spacer(),
          Expanded(
            child: RichText(
              text: TextSpan(
                text: 'I AM ',
                style:
                    DefaultTextStyle.of(context).style.copyWith(fontSize: 40),
                children: const <TextSpan>[
                  TextSpan(
                      text: 'AANISH RAHMANI \n ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.deepPurple)),
                  TextSpan(
                      text:
                          'I am a Flutter engineer with a strong passion for building\n',
                      style: TextStyle(fontSize: 20)),
                  TextSpan(
                      text:
                          'cross-platform mobile applications. Currently pursuing my\nB-tech.',
                      style: TextStyle(fontSize: 20)),
                  TextSpan(
                    text:
                        'I am also expanding my skills in machine learning, exploring its  ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  TextSpan(
                    text:
                        ' potential to create intelligent and data-driven solutions. I am eager to combine both fields to innovate and develop impactful projects.   \n',
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
                  ),
                  TextSpan(
                    text: ' \n',
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 50),
          // const Spacer(),
          Flexible(
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
              child: Image.asset(
                'assets/flutter-bird.png',
                fit: BoxFit.cover,
                color:
                    Theme.of(context).scaffoldBackgroundColor.withOpacity(0.1),
                colorBlendMode: BlendMode.darken,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
