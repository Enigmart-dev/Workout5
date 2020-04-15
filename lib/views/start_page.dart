import 'package:flutter/material.dart';
import 'package:workoutapp/util/ui_layout.dart';
import 'package:workoutapp/widgets/start_widgets.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
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
            child: LayoutBuilder(
          builder: (context, constraints) => Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Flexible(flex: 3, child: TopSection()),
                Flexible(
                  flex: 8,
                  child: ExercisesSection(
                      isScrollable: constraints.maxHeight < SizeConfig.heightHD),
                ),
                Flexible(
                  flex: 2,
                  child: BottomSection(),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}

class ExercisesSection extends StatelessWidget {
  final bool isScrollable;

  ExercisesSection({Key key, this.isScrollable}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 7),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.widthMultiplier * 2,
      ),
      child: ListView.separated(
        itemCount: 5,
        shrinkWrap: true,
        physics: isScrollable
            ? AlwaysScrollableScrollPhysics()
            : NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
              height: SizeConfig.heightMultiplier * 9,
              child: Center(
                child: ListTile(
                  leading: Image.asset(
                    "res/assets/1.png",
                    fit: BoxFit.fill,
                  ),
                  title: Text(
                    "Push-ups",
                    style: TextStyle(
                        fontSize: SizeConfig.textMultiplier * 2.5,
                        color: Colors.black),
                  ),
                  subtitle: Text(
                    "Music: The Eye of the tiger",
                    style: TextStyle(
                        fontSize: SizeConfig.textMultiplier * 1.5,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey),
                  ),
                  trailing: Text(
                    "2 min",
                    style: TextStyle(
                        fontSize: SizeConfig.textMultiplier * 2,
                        color: Colors.black),
                  ),
                ),
              ));
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(thickness: 2, color: Colors.black12,);
        },
      ),
    );
  }
}
