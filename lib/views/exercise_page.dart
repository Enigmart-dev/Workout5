import 'package:flutter/material.dart';
import 'package:workoutapp/util/ui_layout.dart';

class ExercisePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 2),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Color(0xFF6584FF), Color(0xFF19349D)],
                stops: [0.15, 0.8],
                tileMode: TileMode.mirror)),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Flexible(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      size: SizeConfig.imageSizeMultiplier * 7,
                    ), onPressed: () {
                      Navigator.pop(context);
                  },
                  ),
                ),
              ),
              Flexible(
                flex: 5,
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 5),
                    child: CurrentExerciseBox(),
                  ),
                ),
              ),
              MediaQuery.of(context).orientation != Orientation.portrait ? Container()
                  : Flexible(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 5),
                  child: NextSection(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CurrentExerciseBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          width: SizeConfig.imageSizeMultiplier * 70,
          child: Image.asset(
            "res/assets/1.png",
            fit: BoxFit.fill,
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              "Push-ups",
              style: TextStyle(
                fontSize: SizeConfig.textMultiplier * 4
              ),
            ),
            Spacer(),
            Text(
              "00:30",
              style: TextStyle(
                  fontSize: SizeConfig.textMultiplier * 4
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class NextSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Text("Next"),
            Spacer(),
            Text("Remaining steps: 2"),
          ],
        ),
        SizedBox(height: SizeConfig.heightMultiplier * 10),
      ],
    );
  }
}

