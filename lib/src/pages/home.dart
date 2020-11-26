import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:video_player/video_player.dart';
import '../theme/colors.dart';
import '../theme/fonts.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:chewie/chewie.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    // initializePlayer();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  List<String> welcomeImages = [
    "lib/src/assets/images/Image2.jpg",
    "lib/src/assets/images/Image1.jpg",
    "lib/src/assets/images/Image3.jpg",
    "lib/src/assets/images/Image4.jpg",
    "lib/src/assets/images/Image2.jpg",
    "lib/src/assets/images/Image1.jpg",
    "lib/src/assets/images/Image3.jpg",
    "lib/src/assets/images/Image4.jpg",
    "lib/src/assets/images/Image1.jpg",
    "lib/src/assets/images/Image2.jpg",
    "lib/src/assets/images/Image3.jpg",
    "lib/src/assets/images/Image4.jpg",
  ];
  ChewieController _chewieController;
  VideoPlayerController _videoPlayerController;
  Future<void> initializePlayer() async {
    _videoPlayerController = VideoPlayerController.network(
        'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4');
    await _videoPlayerController.initialize();
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: true,
      looping: true,
      // Try playing around with some of these other options:

      showControls: false,
      materialProgressColors: ChewieProgressColors(
        playedColor: Colors.red,
        handleColor: Colors.blue,
        backgroundColor: Colors.grey,
        bufferedColor: Colors.lightGreen,
      ),
      placeholder: Container(
        color: Colors.grey,
      ),
      autoInitialize: true,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    CardController controller;
    final windowHeight = MediaQuery.of(context).size.height;
    final windowWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/src/assets/images/Home-background-1.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: windowHeight * 0.14),
            Center(
              child: Container(
                height: windowHeight * 0.86,
                width: windowWidth,
                child: TinderSwapCard(
                  swipeUp: false,
                  swipeDown: false,
                  orientation: AmassOrientation.BOTTOM,
                  totalNum: welcomeImages.length,
                  stackNum: 3,
                  swipeEdge: 4.0,
                  maxWidth: windowWidth*0.97,
                  maxHeight: windowHeight * 0.93,
                  minWidth: windowWidth * 0.9,
                  minHeight: windowHeight * 0.89,
                  cardBuilder: (context, index) => _card(index),
                  cardController: controller = CardController(),
                  swipeUpdateCallback:
                      (DragUpdateDetails details, Alignment align) {
                    /// Get swiping card's alignment
                    if (align.x < 0) {
                      //Card is LEFT swiping
                      print("left");
                    } else if (align.x > 0) {
                      //Card is RIGHT swiping
                      print("right");
                    }
                  },
                  swipeCompleteCallback:
                      (CardSwipeOrientation orientation, int index) {
                    /// Get orientation & index of swiped card!
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //Content in a card
  Widget _card(index) {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset('${welcomeImages[index]}', fit: BoxFit.cover),
          // video controller
          // Expanded(
          //   child: Center(
          //     child: _chewieController != null && _chewieController.videoPlayerController.value.initialized
          //         ? Chewie(
          //             controller: _chewieController,
          //           )
          //         : Column(
          //             mainAxisAlignment: MainAxisAlignment.center,
          //             children: const [
          //               CircularProgressIndicator(),
          //               SizedBox(height: 20),

          //             ],
          //           ),
          //   ),
          // ),
          DecoratedBox(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.center,
                    colors: [
                  const Color(0x30000000),
                  const Color(0x10ffffff),
                ])),
          ),

          DecoratedBox(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: FractionalOffset.bottomCenter,
                    end: FractionalOffset.center,
                    colors: [
                  const Color(0x30000000),
                  const Color(0x10ffffff),
                ])),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.02,
            left: MediaQuery.of(context).size.width * 0.25,
            height: 50,
            width: 50,
            child: CircleAvatar(
              radius: 2,
              backgroundImage: AssetImage('${welcomeImages[1]}'),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.03,
            left: MediaQuery.of(context).size.width * 0.40,
            height: 50,
            width: 100,
            child: Padding(
              padding: EdgeInsets.all(6.0),
              child: Text(
                "Nipun Waas",
                style: AppFonts.userName,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.32,
            left: 0,
            height: 80,
            width: 80,
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: IconButton(
                  icon: FaIcon(FontAwesomeIcons.solidHeart),
                  color: Colors.white,
                  iconSize: 30,
                  onPressed: () {
                    setState(() {
                      _chewieController.dispose();
                      _videoPlayerController.pause();
                      _videoPlayerController.seekTo(const Duration());
                      _chewieController = ChewieController(
                        videoPlayerController: _videoPlayerController,
                        autoPlay: true,
                        looping: true,
                      );
                    });
                  }),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.42,
            left: 0,
            height: 80,
            width: 80,
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: IconButton(
                  icon: FaIcon(FontAwesomeIcons.userPlus),
                  color: Colors.white,
                  iconSize: 30,
                  tooltip: "fdf",
                  onPressed: () {
                    print("Pressed");
                  }),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.52,
            left: 0,
            height: 80,
            width: 80,
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: IconButton(
                  icon: FaIcon(FontAwesomeIcons.solidComment),
                  color: Colors.white,
                  iconSize: 30,
                  onPressed: () {
                    print("Pressed");
                  }),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.62,
            left: 0,
            height: 80,
            width: 80,
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: IconButton(
                  icon: FaIcon(FontAwesomeIcons.share),
                  color: Colors.white,
                  iconSize: 30,
                  onPressed: () {
                    print("Pressed");
                  }),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.72,
            height: 80,
            width: 300,
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                "Enter the email address you used to create your account and we will email you a link to reset your password",
                style: AppFonts.cardDescription,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.75,
            height: 80,
            width: 300,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: IconButton(
                      icon: FaIcon(FontAwesomeIcons.music),
                      color: Colors.white,
                      iconSize: 15,
                      onPressed: () {
                        print("Pressed");
                      }),
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    "Enrique ge sinduwak",
                    style: AppFonts.cardDescription,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      elevation: 5,
      margin: EdgeInsets.all(10),
    );
  }
}
