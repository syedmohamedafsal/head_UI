// All imports stay the same
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:animationhead/pages/detail_page.dart';
import 'package:animationhead/widget/center_custom_painter.dart';
import 'package:animationhead/widget/main_left_side_custom_painter.dart';
import 'package:animationhead/widget/social_media_custom_painter.dart';

class CatalogPage extends StatefulWidget {
  const CatalogPage({super.key});

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late List<WebViewController> _controllers;

  final List<String> titles = ['ANGULAR \n3D HEAD', 'AFRICAN \n3D HEAD'];
  int currentModelIndex = 0;

  final Duration totalDuration = const Duration(milliseconds: 2000);

  late List<Animation<double>> _animations;

  final String htmlContent = '''
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>3D Head Model</title>
  <script type="module" src="https://unpkg.com/@google/model-viewer/dist/model-viewer.min.js"></script>
  <style>
    body, html {
      margin: 0;
      padding: 0;
      height: 250vh;
      background-color: transparent;
      overflow: hidden;
    }
    model-viewer {
      width: 45%;
      height: 25%;
      background-color: transparent;
      margin: auto;
      display: block;
      pointer-events: auto;
      touch-action: none;
    }
    model-viewer.no-interaction {
      pointer-events: none;
    }
  </style>
</head>
<body>
  <model-viewer id="carModel"
    src="https://raw.githubusercontent.com/syedmohamedafsal/head_UI/main/assets/model/first_person_-_vr_sculpture_park%20(1).glb"
    alt="3D Head Model"
    camera-controls
    disable-zoom
    camera-orbit="90deg 1m"
    environment-image="neutral"
    exposure="0.75"
    shadow-intensity="1"
    shadow-softness="1"
    style="background-color: transparent;"
  ></model-viewer>

  <script>
    const model = document.getElementById('carModel');
    let startAngle = 90;
    let endAngle = 0;
    let startZoom = 3;
    let endZoom = 1;
    let duration = 4000;
    let start = null;

    function animate(timestamp) {
      if (!start) start = timestamp;
      let progress = (timestamp - start) / duration;
      if (progress > 1) progress = 1;

      let angle = startAngle + (endAngle - startAngle) * progress;
      let zoom = startZoom + (endZoom - startZoom) * progress;

      model.cameraOrbit = angle + "deg 100deg " + zoom + "m";

      if (progress < 1) {
        requestAnimationFrame(animate);
      } else {
        model.removeAttribute('camera-controls');
        model.classList.add('no-interaction');
      }
    }

    model.addEventListener('load', () => {
      requestAnimationFrame(animate);
    });

    function rotateCar360() {
      let startAngle = 0;
      let endAngle = 360;
      let duration = 4000;
      let start = null;

      function animateRotate(timestamp) {
        if (!start) start = timestamp;
        let progress = (timestamp - start) / duration;
        if (progress > 1) progress = 1;

        let angle = startAngle + (endAngle - startAngle) * progress;
        model.cameraOrbit = angle + "deg 75deg 1.5m";

        if (progress < 1) {
          requestAnimationFrame(animateRotate);
        }
      }

      requestAnimationFrame(animateRotate);
    }
  </script>
</body>
</html>
''';

  final String htmlContentTwo = '''
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>3D Head Model</title>
  <script type="module" src="https://unpkg.com/@google/model-viewer/dist/model-viewer.min.js"></script>
  <style>
    body, html {
      margin: 0;
      padding: 0;
      height: 250vh;
      background-color: transparent;
      overflow: hidden;
    }
    model-viewer {
      width: 45%;
      height: 25%;
      background-color: transparent;
      margin: auto;
      display: block;
      pointer-events: auto;
      touch-action: none;
    }
    model-viewer.no-interaction {
      pointer-events: none;
    }
  </style>
</head>
<body>
  <model-viewer id="carModel"
    src="https://raw.githubusercontent.com/syedmohamedafsal/head_UI/main/assets/model/african_goddesss_head%20(1).glb"
    alt="3D Head Model"
    camera-controls
    disable-zoom
    camera-orbit="90deg 1m"
    environment-image="neutral"
    exposure="0.75"
    shadow-intensity="1"
    shadow-softness="1"
    style="background-color: transparent;"
  ></model-viewer>

  <script>
    const model = document.getElementById('carModel');
    let startAngle = 90;
    let endAngle = 0;
    let startZoom = 3;
    let endZoom = 1;
    let duration = 4000;
    let start = null;

    function animate(timestamp) {
      if (!start) start = timestamp;
      let progress = (timestamp - start) / duration;
      if (progress > 1) progress = 1;

      let angle = startAngle + (endAngle - startAngle) * progress;
      let zoom = startZoom + (endZoom - startZoom) * progress;

      model.cameraOrbit = angle + "deg 100deg " + zoom + "m";

      if (progress < 1) {
        requestAnimationFrame(animate);
      } else {
        model.removeAttribute('camera-controls');
        model.classList.add('no-interaction');
      }
    }

    model.addEventListener('load', () => {
      requestAnimationFrame(animate);
    });

    function rotateCar360() {
      let startAngle = 0;
      let endAngle = 360;
      let duration = 4000;
      let start = null;

      function animateRotate(timestamp) {
        if (!start) start = timestamp;
        let progress = (timestamp - start) / duration;
        if (progress > 1) progress = 1;

        let angle = startAngle + (endAngle - startAngle) * progress;
        model.cameraOrbit = angle + "deg 75deg 1.5m";

        if (progress < 1) {
          requestAnimationFrame(animateRotate);
        }
      }

      requestAnimationFrame(animateRotate);
    }
  </script>
</body>
</html>
''';

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: totalDuration,
    );

    _animations = List.generate(10, (index) {
      final start = index * 0.08;
      final end = start + 0.2;
      return Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
          parent: _animationController,
          curve: Interval(start, end, curve: Curves.easeOut),
        ),
      );
    });

    _controllers = [
      WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setBackgroundColor(const Color(0x00000000))
        ..loadHtmlString(htmlContent),
      WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setBackgroundColor(const Color(0x00000000))
        ..loadHtmlString(htmlContentTwo),
    ];

    Future.delayed(const Duration(milliseconds: 200), () {
      _animationController.forward();
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Widget _fadeIn(int index, Widget child) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, _) {
        final value = _animations[index].value;
        return Opacity(
          opacity: value,
          child: Transform.scale(
            scale: 0.8 + (0.2 * value),
            child: child,
          ),
        );
      },
    );
  }

  void _goToNextModel() {
    if (currentModelIndex < titles.length - 1) {
      setState(() {
        currentModelIndex++;
      });
    }
  }

  void _goToPreviousModel() {
    if (currentModelIndex > 0) {
      setState(() {
        currentModelIndex--;
      });
    }
  }

  Widget _navButton(IconData icon, VoidCallback onTap, int index) {
    return _fadeIn(
      index,
      Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 98, 250, 52),
          borderRadius: BorderRadius.circular(10),
        ),
        child: IconButton(
          icon: Icon(icon),
          color: Colors.black,
          onPressed: onTap,
        ),
      ),
    );
  }

  Widget _socialButton(
      {required double top,
      required double left,
      required IconData icon,
      required int index}) {
    return Positioned(
      top: top,
      left: left,
      child: _fadeIn(
        index,
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
            icon: FaIcon(icon),
            color: Colors.black,
            onPressed: () {},
          ),
        ),
      ),
    );
  }

  Widget _skewDash(
      {required Color color, required double height, required double width}) {
    return Container(
      width: width,
      height: height,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    const double baseWidth = 300;
    const double baseHeight = baseWidth * 0.5833;

    return Scaffold(
      backgroundColor: Colors.white24,
      body: Stack(
        children: [
          // Left and Right Custom Painters
          Positioned(
            top: 300,
            right: 50,
            child: _fadeIn(
              0,
              SizedBox(
                width: baseWidth * 1.7,
                height: baseHeight * 2.5,
                child: CustomPaint(painter: LeftSideCustomPainter()),
              ),
            ),
          ),
          Positioned(
            top: 300,
            left: 50,
            child: _fadeIn(
              1,
              Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()..scale(-1.0, 1.0),
                child: SizedBox(
                  width: baseWidth * 1.7,
                  height: baseHeight * 2.5,
                  child: CustomPaint(painter: LeftSideCustomPainter()),
                ),
              ),
            ),
          ),

          // Center Painter
          Positioned(
            top: 300,
            right: -110,
            child: _fadeIn(
              2,
              SizedBox(
                width: baseWidth * 2.6,
                height: baseHeight * 2.5,
                child: CustomPaint(painter: CenterCustomPainter()),
              ),
            ),
          ),

          // WebView (Models)
          Positioned(
            top: 200,
            right:
                MediaQuery.of(context).size.width / 2 - (baseWidth * 1.3) / 2,
            child: _fadeIn(
              3,
              SizedBox(
                width: baseWidth * 1.3,
                height: baseHeight * 3.0,
                child: Stack(
                  children: [
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 600),
                      left: currentModelIndex == 0 ? 0 : -baseWidth * 1.3,
                      child: SizedBox(
                        width: baseWidth * 1.3,
                        height: baseHeight * 3.0,
                        child: WebViewWidget(controller: _controllers[0]),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 600),
                      left: currentModelIndex == 1 ? 0 : baseWidth * 1.3,
                      child: SizedBox(
                        width: baseWidth * 1.3,
                        height: baseHeight * 3.0,
                        child: WebViewWidget(controller: _controllers[1]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Navigation Buttons
          Positioned(
              top: 460,
              left: 50,
              child: _navButton(Icons.arrow_back_ios, _goToPreviousModel, 4)),
          Positioned(
              top: 460,
              left: 315,
              child: _navButton(Icons.arrow_forward_ios, _goToNextModel, 5)),

          // Title and Icons
          Positioned(
            top: 540,
            left: 110,
            child: _fadeIn(
              6,
              Column(
                children: [
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 600),
                    child: Text(
                      titles[currentModelIndex],
                      key: ValueKey<int>(currentModelIndex),
                      textAlign: TextAlign.center,
                      style: GoogleFonts.rajdhani(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(CupertinoIcons.heart_fill, size: 30),
                      SizedBox(width: 25),
                      Icon(CupertinoIcons.paperplane, size: 30),
                      SizedBox(width: 25),
                      Icon(CupertinoIcons.chat_bubble_text, size: 30),
                      SizedBox(width: 25),
                      Icon(CupertinoIcons.settings, size: 30),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // Price Tag
          Positioned(
            bottom: 160,
            left: 0,
            right: 0,
            child: _fadeIn(
              7,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _skewDash(color: Colors.grey[300]!, height: 5, width: 50),
                  _skewDash(color: Colors.grey[500]!, height: 5, width: 80),
                  Text('\$79',
                      style: GoogleFonts.fugazOne(
                          fontSize: 40, color: Colors.white)),
                  _skewDash(color: Colors.grey[500]!, height: 5, width: 80),
                  _skewDash(color: Colors.grey[300]!, height: 5, width: 50),
                ],
              ),
            ),
          ),

          // Purchase Button
          Positioned(
            bottom: 80,
            right: 20,
            child: _fadeIn(
              8,
              ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DetailPage())),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 98, 250, 52),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 150, vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 4,
                ),
                child: const Text(
                  'Purchase',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),

          // Footer
          Positioned(
            bottom: 10,
            right: 10,
            child: _fadeIn(
              9,
              Row(
                children: [
                  Text(
                    'Follow us to explore more content',
                    style: GoogleFonts.rajdhani(
                      color: const Color.fromARGB(255, 208, 205, 205),
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(width: 100),
                  Text(
                    '@syedmd_afsal',
                    style: GoogleFonts.teko(
                      color: const Color.fromARGB(255, 208, 205, 205),
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Header + Social
          Positioned(
            top: 50,
            left: 10,
            child: _fadeIn(
              0,
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        'Online \nCatalog',
                        style: GoogleFonts.rajdhani(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Use promocode \nfor discount',
                        style: GoogleFonts.rajdhani(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 55),
                  SizedBox(
                    width: baseWidth * 1.1,
                    height: baseHeight * 1.1,
                    child: Stack(
                      children: [
                        CustomPaint(
                          size: Size(baseWidth * 1.1, baseHeight * 1.1),
                          painter: RPSCustomPainter(),
                        ),
                        _socialButton(
                            top: 40,
                            left: 60,
                            icon: FontAwesomeIcons.instagram,
                            index: 1),
                        _socialButton(
                            top: 40,
                            left: 165,
                            icon: FontAwesomeIcons.xTwitter,
                            index: 2),
                        Positioned(
                          top: 116,
                          left: 25,
                          child: SizedBox(
                            width: 200,
                            child: Text(
                              'We Are On \nSocial media',
                              textAlign: TextAlign.end,
                              style: GoogleFonts.rajdhani(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
