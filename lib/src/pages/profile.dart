import 'package:flutter/material.dart';
import '../theme/colors.dart';
import '../theme/fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    final windowHeight = MediaQuery.of(context).size.height;
    final windowWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: windowHeight,
        width: windowWidth,
        //Back gradient
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/src/assets/images/Home-background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child:SingleChildScrollView(
          child:Column(
            children: <Widget>[
              SizedBox(height: windowHeight * 0.14),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Container( //top section
                      // color: Colors.white,
                      height: windowHeight*0.37,
                      width: windowWidth,
                      child: Column(
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(12.0),
                                    child: Container(
                                      // color: Colors.green,
                                      width: windowWidth*0.3,
                                      // alignment: Alignment.center,
                                      child: CircleAvatar(
                                        radius: 50,
                                        backgroundImage: AssetImage('lib/src/assets/images/Image4.jpg'),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Container(
                              width: windowWidth*0.6,
                              alignment: Alignment.center,
                              child: Text(
                                "Alexa A. Williams",
                                style: AppFonts.userNameProfile,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(3.0),
                            child: Container(
                              width: windowWidth*0.6,
                              alignment: Alignment.center,
                              child: Text(
                                "Actor | Pet lover | Karma believer Follow for awesome content <3",
                                style: AppFonts.userDescription,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Container(
                              // color: Colors.green,
                              width: windowWidth*0.75,
                              alignment: Alignment.center,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(2.0),
                                        child: Container(
                                          width: windowWidth*0.2,
                                          alignment: Alignment.center,
                                          child: Text(
                                            "40.3K",
                                            style: AppFonts.numberFollowers,
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(2.0),
                                        child: Container(
                                          width: windowWidth*0.2,
                                          alignment: Alignment.center,
                                          child: Text(
                                            "FOLLOWERS",
                                            style: AppFonts.nameFollowers,
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(2.0),
                                        child: Container(
                                          width: windowWidth*0.2,
                                          alignment: Alignment.center,
                                          child: Text(
                                            "100M",
                                            style: AppFonts.numberFollowers,
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(2.0),
                                        child: Container(
                                          width: windowWidth*0.2,
                                          alignment: Alignment.center,
                                          child: Text(
                                            "LIKES",
                                            style: AppFonts.nameFollowers,
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(2.0),
                                        child: Container(
                                          width: windowWidth*0.2,
                                          alignment: Alignment.center,
                                          child: Text(
                                            "40",
                                            style: AppFonts.numberFollowers,
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(2.0),
                                        child: Container(
                                          width: windowWidth*0.2,
                                          alignment: Alignment.center,
                                          child: Text(
                                            "VIDS",
                                            style: AppFonts.nameFollowers,
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),  
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              //other widgets
              Divider(
                color: Colors.white,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(4.0),
                            child:Container(
                              height: windowHeight*0.3,
                              width: windowHeight*0.3,
                              decoration: BoxDecoration(
                                color: const Color(0xff7c94b6),
                                image: const DecorationImage(
                                  image: AssetImage('lib/src/assets/images/Image1.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(4.0),
                            child:Container(
                              height: windowHeight*0.3,
                              width: windowHeight*0.3,
                              decoration: BoxDecoration(
                                color: const Color(0xff7c94b6),
                                image: const DecorationImage(
                                  image: AssetImage('lib/src/assets/images/Image3.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(4.0),
                            child:Container(
                              height: windowHeight*0.3,
                              width: windowHeight*0.3,
                              decoration: BoxDecoration(
                                color: const Color(0xff7c94b6),
                                image: const DecorationImage(
                                  image: AssetImage('lib/src/assets/images/Image3.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),   
    );
  }
}
