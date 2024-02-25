import 'package:flutter/material.dart';
import '../fitness_app_theme.dart';
import 'package:best_flutter_ui_templates/fitness_app/training/diaignosis_help_page.dart';


class RunningView_h extends StatelessWidget {
  final AnimationController? animationController;
  final Animation<double>? animation;

  const RunningView_h({Key? key, this.animationController, this.animation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      onTap: () {
        // Navigate to the NewPage screen when RunningView is pressed
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => diaignosis_help_page(), // Replace NewPage with the actual screen you want to navigate to
          ),
        );
      },
      child: AnimatedBuilder(
        animation: animationController!,
        builder: (BuildContext context, Widget? child) {
          return FadeTransition(
            opacity: animation!,
            child: Transform(
              transform: Matrix4.translationValues(
                0.0,
                30 * (1.0 - animation!.value),
                0.0,
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 24, right: 24, top: 0, bottom: 0),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 16),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(131, 255, 255, 255),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8.0),
                                  bottomLeft: Radius.circular(8.0),
                                  bottomRight: Radius.circular(8.0),
                                  topRight: Radius.circular(8.0)),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: FitnessAppTheme.grey.withOpacity(0.4),
                                  offset: Offset(0, 0),
                                  blurRadius: 10.0,
                                ),
                              ],
                            ),
                            child: Stack(
                              alignment: Alignment.topLeft,
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0)),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 100,
                                            right: 16,
                                            top: 16,
                                          ),
                                          child: Text(
                                            "도움이 필요하신가요?",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontFamily:
                                                  FitnessAppTheme.fontName,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15,
                                              letterSpacing: 0.0,
                                              color:
                                                  const Color.fromARGB(255, 0, 0, 0),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 100,
                                        bottom: 12,
                                        top: 4,
                                        right: 16,
                                      ),
                                      child: Text(
                                        "쓸말이 있나 더",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontFamily:
                                              FitnessAppTheme.fontName,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10,
                                          letterSpacing: 0.0,
                                          color: FitnessAppTheme.grey
                                              .withOpacity(0.5),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: -16,
                          left: 0,
                          child: SizedBox(
                            width: 110,
                            height: 110,
                            //child: Image.asset("assets/fitness_app/runner.png"),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
