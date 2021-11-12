import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'dart:html';

import 'package:google_fonts/google_fonts.dart';
import 'package:delayed_display/delayed_display.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  int _selectedPage = 0;

  final Color backgrounColor = Color(0xff292929);
  final Color purpleAccent = Color(0xff700B97);
  final Color absoluteZero = Color(0xff0048BA);
  final Color grayAccent = Color(0xff383838);
  final Color grennAccent = Color(0xff59BEA0);

  bool hoverAboutLearn = false;
  bool hoverAboutProgramming = false;
  bool hoverAboutYoutube = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 7.13),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 50),
            alignment: Alignment.center,
            child: Row(
                //  mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("3",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              fontSize: 105.01,
                              color: grennAccent,
                              fontWeight: FontWeight.w800))),
                  Padding(
                    padding: const EdgeInsets.only(left: 36),
                    child: Text("things",
                        style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                fontSize: 105.01,
                                color: Colors.white,
                                fontWeight: FontWeight.w800))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 36),
                    child: Text("i'm",
                        style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                fontSize: 105.01,
                                color: purpleAccent,
                                fontWeight: FontWeight.w800))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 36),
                    child: Text("good at",
                        style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                fontSize: 105.01,
                                color: Colors.white,
                                fontWeight: FontWeight.w800))),
                  ),
                ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80, right: 270),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DelayedDisplay(
                  child: Container(
                    height: 311,
                    width: 300,
                    alignment: Alignment.center,
                    child: AnimatedPadding(
                      duration: Duration(milliseconds: 300),
                      padding: EdgeInsets.only(top: hoverAboutLearn ? 15 : 20),
                      child: InkWell(
                        onTap: () {},
                        onHover: (value) {
                          setState(() {
                            hoverAboutLearn = value;
                          });
                        },
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image(
                                image: NetworkImage(
                                    "https://i.ibb.co/cFwxQhC/project-cat-card.png")),
                            Image(
                                image: NetworkImage(
                                    "https://i.ibb.co/kQxdYDZ/graduate-hat.png"))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                DelayedDisplay(
                    child: Container(
                        height: 311,
                        width: 300,
                        alignment: Alignment.center,
                        child: AnimatedPadding(
                            duration: Duration(milliseconds: 300),
                            padding: EdgeInsets.only(
                                top: hoverAboutProgramming ? 15 : 20),
                            child: InkWell(
                                onTap: () {},
                                onHover: (value) {
                                  setState(() {
                                    hoverAboutProgramming = value;
                                  });
                                },
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Image(
                                        image: NetworkImage(
                                            "https://i.ibb.co/cFwxQhC/project-cat-card.png")),
                                    Image(
                                        image: NetworkImage(
                                            "https://i.ibb.co/nRJP2w8/dev-icon-2.png"))
                                  ],
                                ))))),
                DelayedDisplay(
                    child: Container(
                        height: 311,
                        width: 300,
                        alignment: Alignment.center,
                        child: AnimatedPadding(
                            duration: Duration(milliseconds: 300),
                            padding: EdgeInsets.only(
                                top: hoverAboutYoutube ? 15 : 20),
                            child: InkWell(
                                onTap: () {},
                                onHover: (value) {
                                  setState(() {
                                    hoverAboutYoutube = value;
                                  });
                                },
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Image(
                                        image: NetworkImage(
                                            "https://i.ibb.co/cFwxQhC/project-cat-card.png")),
                                    Image(
                                        image: NetworkImage(
                                            "https://i.ibb.co/5MYxPFH/absolute-zero-icon.png"))
                                  ],
                                ))))),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 100),
            child: Row(
              children: [
                Container(
                  width: 780,
                  height: 174,
                  child: Text(
                    "I'm a bastard. I have absolutely no clue why people can ever think otherwise. Yet they do",
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            fontSize: 48.37,
                            fontWeight: FontWeight.w900,
                            color: Colors.white)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 145),
                  child: Image(
                      image:
                          NetworkImage("https://i.ibb.co/qr9jvDx/linus-t.png")),
                ),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(left: 650),
              child: Text("- Linus Torvalds",
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 27.18,
                          fontWeight: FontWeight.w900))))
        ],
      ),
    );
  }
}



// class IFrameView extends StatefulWidget {
//   final String embedUrl;
//   const IFrameView({Key? key, required this.embedUrl}) : super(key: key);

//   @override
//   _IFrameViewState createState() => _IFrameViewState();
// }

// class _IFrameViewState extends State<IFrameView> {
//   final Color backgrounColor = Color(0xff292929);

//   @override
//   void initState() {
//     super.initState();
//     final IFrameElement _iframeElement = IFrameElement();
//     _iframeElement.height = '500';
//     _iframeElement.width = '500';
//     _iframeElement.src = widget.embedUrl;
//     _iframeElement.style.border = 'none';

// // ignore: undefined_prefixed_name
//     ui.platformViewRegistry.registerViewFactory(
//       'iframeElement',
//       (int viewId) => _iframeElement,
//     );
//   }

//   Widget? _iframeWidget = HtmlElementView(
//     key: UniqueKey(),
//     viewType: 'iframeElement',
//   );

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       alignment: Alignment.center,
//       children: [
//         SizedBox(height: 500, width: 500, child: _iframeWidget),
//         Container(
//           height: 518,
//           width: 518,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(30),
//             border: Border.all(
//               width: 12,
//               color: backgrounColor,
//               style: BorderStyle.solid,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
