import 'package:flutter/material.dart';
import 'package:workoutapp/util/global_data.dart';
import 'package:workoutapp/util/ui_layout.dart';
import 'package:workoutapp/views/exercise_page.dart';
import 'package:workoutapp/views/start_page.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //TODO: STACK with menu on the top left
    return Container(
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topRight,
            child: Container(
              padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 2),
              width: SizeConfig.imageSizeMultiplier * 28,
              child: Image.asset(
                AppData.of(context).logo,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                  left: SizeConfig.widthMultiplier * 2,
                  top: SizeConfig.widthMultiplier * 2),
              child: IconButton(
                iconSize: SizeConfig.imageSizeMultiplier * 7,
                icon: Icon(Icons.settings, color: Colors.black),
                onPressed: () {},
              ),
            ),
          ),
          Align(
            alignment:
                MediaQuery.of(context).orientation == Orientation.portrait
                    ? Alignment.bottomLeft
                    : Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.only(
                  left: SizeConfig.widthMultiplier * 8,
                  bottom: SizeConfig.widthMultiplier * 6),
              child: Text(
                AppData.of(context).startData.title,
                style: TextStyle(
                    fontSize: SizeConfig.textMultiplier * 4,
                    wordSpacing: -1,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topRight,
            child: Container(
                child: DropdownButton(
              items: <DropdownMenuItem>[
                DropdownMenuItem(child: Text("Random mode")),
                DropdownMenuItem(child: Text("Daily mode")),
              ],
              onChanged: (value) {},
            )),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: RaisedButton(
              child: Text(
                "START",
                style: TextStyle(fontSize: SizeConfig.textMultiplier * 2.5),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                  return ExercisePage();
                }
                ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
