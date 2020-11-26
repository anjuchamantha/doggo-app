import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import '../theme/fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key key}) : super(key: key);
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    final windowHeight = MediaQuery.of(context).size.height;
    final windowWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        height: windowHeight,
        width: windowWidth,
        //Back gradient
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/src/assets/images/Home-background-1.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: windowHeight * 0.16),
            Container(
              alignment: Alignment.center,
              height: windowHeight * 0.08,
              width: windowWidth * 0.8,
              color: Colors.white.withOpacity(0.5),
              // child: buildFloatingSearchBar(),
            ),
            SizedBox(height: windowHeight * 0.03),
            Container(
              width: windowWidth,
              height: windowHeight * 0.73,
              // color: Colors.red,
              child: SingleChildScrollView(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.centerLeft,
                          height: windowHeight * 0.07,
                          width: windowWidth,
                          padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
                          child:Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "TODAY",
                                    style: AppFonts.smallTitles,
                                  ),
                                  SizedBox(height: windowHeight * 0.007),
                                  Text(
                                    "blablabla",
                                    style: AppFonts.smallSubTitles,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: windowWidth,
                          height: windowHeight * 0.3,
                          // color: Colors.white,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: <Widget>[
                                SizedBox(width: windowHeight * 0.02),
                                today(windowHeight, windowWidth),
                                today(windowHeight, windowWidth),
                                today(windowHeight, windowWidth),
                                today(windowHeight, windowWidth),
                                today(windowHeight, windowWidth),
                                today(windowHeight, windowWidth),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: windowHeight * 0.03),
                        _myVideos(windowHeight, windowWidth),
                        _myVideos(windowHeight, windowWidth),
                        _myVideos(windowHeight, windowWidth),
                        _myVideos(windowHeight, windowWidth),
                        _myVideos(windowHeight, windowWidth),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFloatingSearchBar(context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return FloatingSearchBar(
      hint: 'Search...',
      scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
      transitionDuration: const Duration(milliseconds: 800),
      transitionCurve: Curves.easeInOut,
      physics: const BouncingScrollPhysics(),
      axisAlignment: isPortrait ? 0.0 : -1.0,
      openAxisAlignment: 0.0,
      maxWidth: isPortrait ? 600 : 500,
      debounceDelay: const Duration(milliseconds: 500),
      onQueryChanged: (query) {
        // Call your model, bloc, controller here.
      },
      // Specify a custom transition to be used for
      // animating between opened and closed stated.
      transition: CircularFloatingSearchBarTransition(),
      actions: [
        FloatingSearchBarAction(
          showIfOpened: false,
          child: CircularButton(
            icon: const Icon(Icons.place),
            onPressed: () {},
          ),
        ),
        FloatingSearchBarAction.searchToClear(
          showIfClosed: false,
        ),
      ],
      builder: (context, transition) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Material(
            color: Colors.white,
            elevation: 4.0,
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  ListTile(
                    title: Text("Home"),
                    subtitle: Text("helloooooo"),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget today(windowHeight, windowWidth) {
    final cardHeight = windowHeight * 0.25;
    final cardWidth = windowHeight * 0.178;
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Stack(
        children: [
          Container(
            height: cardHeight,
            width: cardWidth,
            decoration: BoxDecoration(
              color: const Color(0xff7c94b6),
              image: const DecorationImage(
                image: AssetImage('lib/src/assets/images/Image2.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          Container(
            height: cardHeight,
            width: cardWidth,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(
                begin: FractionalOffset.bottomRight,
                end: FractionalOffset.center,
                colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.2),
                ],
              ),
            ),
          ),
          Container(
            width: cardWidth,
            height: cardHeight * 0.95,
            alignment: Alignment.center,
            child: Positioned(
              top: cardHeight * 0.8,
              height: cardHeight,
              width: cardWidth,
              child: Padding(
                padding: EdgeInsets.all(6.0),
                child: IconButton(
                  icon: FaIcon(FontAwesomeIcons.play),
                  color: Colors.white,
                  iconSize: 30,
                  onPressed: () {
                    print("Pressed");
                  }
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _myVideos(windowHeight, windowWidth) {
    final cardHeight = windowHeight * 0.35;
    final cardWidth = windowHeight * 0.25;
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Stack(
            children: [
              Container(
                height: cardHeight,
                width: cardWidth,
                decoration: BoxDecoration(
                  color: const Color(0xff7c94b6),
                  image: const DecorationImage(
                    image: AssetImage('lib/src/assets/images/Image1.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              Container(
                height: cardHeight,
                width: cardWidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(
                    begin: FractionalOffset.bottomRight,
                    end: FractionalOffset.center,
                    colors: [
                      Colors.black.withOpacity(0.9),
                      Colors.black.withOpacity(0.2),
                    ],
                  ),
                ),
              ),
              Container(
                width: cardWidth,
                height: cardHeight * 0.95,
                alignment: Alignment.bottomCenter,
                child: Positioned(
                  top: cardHeight * 0.8,
                  height: cardHeight,
                  width: cardWidth,
                  child: Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Text(
                      "Nipun Waas",
                      style: AppFonts.searchCardName,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Stack(
            children: [
              Container(
                height: cardHeight,
                width: cardWidth,
                decoration: BoxDecoration(
                  color: const Color(0xff7c94b6),
                  image: const DecorationImage(
                    image: AssetImage('lib/src/assets/images/Image2.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              Container(
                height: cardHeight,
                width: cardWidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(
                    begin: FractionalOffset.bottomRight,
                    end: FractionalOffset.center,
                    colors: [
                      Colors.black.withOpacity(0.9),
                      Colors.black.withOpacity(0.2),
                    ],
                  ),
                ),
              ),
              Container(
                width: cardWidth,
                height: cardHeight * 0.95,
                alignment: Alignment.bottomCenter,
                child: Positioned(
                  top: cardHeight * 0.8,
                  height: cardHeight,
                  width: cardWidth,
                  child: Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Text(
                      "Nipun Waas",
                      style: AppFonts.searchCardName,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
