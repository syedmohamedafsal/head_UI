import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:animationhead/widget/behind_custom_painter.dart';
import 'package:animationhead/widget/main_page_text_painter.dart';
import 'package:animationhead/widget/main_page_leftside_painter.dart';
import 'package:animationhead/widget/main_page_right_painter.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage>
    with SingleTickerProviderStateMixin {
  late final WebViewController _controller;
  late final AnimationController _animationController;
  bool _modelLoaded = false;

  // Animations for staggered effect
  late final Animation<double> _navBackOpacity;
  late final Animation<double> _navPersonOpacity;
  late final Animation<double> _textOpacity;
  late final Animation<double> _rightPainterOpacity;
  late final Animation<double> _leftPainterOpacity;
  late final Animation<double> _rpsPainterOpacity;
  late final Animation<double> _titleOpacity;
  late final Animation<double> _subtitle1Opacity;
  late final Animation<double> _subtitle2Opacity;
  late final Animation<double> _findMoreOpacity;
  late final Animation<double> _sideImageOpacity;
  late final Animation<double> _skewDashOpacity;
  late final Animation<double> _searchBtnOpacity;

  late final Animation<double> _navBackScale;
  late final Animation<double> _navPersonScale;
  late final Animation<double> _textScale;
  late final Animation<double> _rightPainterScale;
  late final Animation<double> _leftPainterScale;
  late final Animation<double> _rpsPainterScale;
  late final Animation<double> _titleScale;
  late final Animation<double> _subtitle1Scale;
  late final Animation<double> _subtitle2Scale;
  late final Animation<double> _findMoreScale;
  late final Animation<double> _sideImageScale;
  late final Animation<double> _skewDashScale;
  late final Animation<double> _searchBtnScale;

  @override
  void initState() {
    super.initState();

    // Animation controller for entire stagger animation sequence
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1800),
    );

    // Helper: Create Tween from 0 to 1 with interval
    Animation<double> opacityTween(double start, double end) => CurvedAnimation(
          parent: _animationController,
          curve: Interval(start, end, curve: Curves.easeOut),
        );

    Animation<double> scaleTween(double start, double end) =>
        Tween<double>(begin: 0.8, end: 1.0).animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Interval(start, end, curve: Curves.elasticOut),
          ),
        );

    // Define intervals for each widget staggered in sequence
    _navBackOpacity = opacityTween(0.0, 0.1);
    _navBackScale = scaleTween(0.0, 0.1);

    _navPersonOpacity = opacityTween(0.1, 0.2);
    _navPersonScale = scaleTween(0.1, 0.2);

    _textOpacity = opacityTween(0.2, 0.3);
    _textScale = scaleTween(0.2, 0.3);

    _rightPainterOpacity = opacityTween(0.3, 0.4);
    _rightPainterScale = scaleTween(0.3, 0.4);

    _leftPainterOpacity = opacityTween(0.4, 0.5);
    _leftPainterScale = scaleTween(0.4, 0.5);

    _rpsPainterOpacity = opacityTween(0.5, 0.55);
    _rpsPainterScale = scaleTween(0.5, 0.55);

    _titleOpacity = opacityTween(0.55, 0.6);
    _titleScale = scaleTween(0.55, 0.6);

    _subtitle1Opacity = opacityTween(0.6, 0.65);
    _subtitle1Scale = scaleTween(0.6, 0.65);

    _subtitle2Opacity = opacityTween(0.65, 0.7);
    _subtitle2Scale = scaleTween(0.65, 0.7);

    _findMoreOpacity = opacityTween(0.7, 0.75);
    _findMoreScale = scaleTween(0.7, 0.75);

    _sideImageOpacity = opacityTween(0.75, 0.8);
    _sideImageScale = scaleTween(0.75, 0.8);

    _skewDashOpacity = opacityTween(0.8, 0.9);
    _skewDashScale = scaleTween(0.8, 0.9);

    _searchBtnOpacity = opacityTween(0.9, 1.0);
    _searchBtnScale = scaleTween(0.9, 1.0);

    const String htmlContent = '''
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>3D Head Model</title>
  <script type="module" src="https://unpkg.com/@google/model-viewer/dist/model-viewer.min.js"></script>
  <style>
    html, body {
      margin: 0;
      padding: 0;
      width: 100%;
      height: 100%;
      background-color: rgba(0,0,0,0);
      overflow: hidden;
    }
    model-viewer {
      width: 120%;
      height: 120%;
      background-color: transparent;
      position: absolute;
      top: 0;
      left: 0;
    }
    model-viewer.no-interaction {
      pointer-events: none;
    }
  </style>
</head>
<body>
  <model-viewer id="faceModel"
    src="https://raw.githubusercontent.com/syedmohamedafsal/head_UI/main/assets/model/first_person_-_vr_sculpture_park%20(1).glb"
    alt="3D Head Model"
    camera-controls
    disable-zoom
    interaction-prompt="none"
    environment-image="neutral"
    style="background-color: transparent;"
  ></model-viewer>

  <script>
    const model = document.getElementById('faceModel');
    let startAngle = 90;
    let endAngle = 20;
    let zoom = 0.5;
    let duration = 2000;
    let startTime = null;

    function animateCamera(timestamp) {
      if (!startTime) startTime = timestamp;
      let progress = (timestamp - startTime) / duration;
      if (progress > 1) progress = 1;

      let angle = startAngle + (endAngle - startAngle) * progress;
      model.cameraOrbit = angle + "deg 75deg " + zoom + "m";

      if (progress < 1) {
        requestAnimationFrame(animateCamera);
      } else {
        model.removeAttribute('camera-controls');
        model.classList.add('no-interaction');
        // Notify Flutter after animation ends
        ModelReady.postMessage("loaded");
      }
    }

    model.addEventListener('load', () => {
      requestAnimationFrame(animateCamera);
    });
  </script>
</body>
</html>
''';

    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..addJavaScriptChannel(
        'ModelReady',
        onMessageReceived: (message) {
          if (message.message == "loaded") {
            setState(() {
              _modelLoaded = true;
            });
            _animationController.forward();
          }
        },
      )
      ..setBackgroundColor(const Color(0x00000000))
      ..loadHtmlString(htmlContent);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Widget _navButton(IconData icon, VoidCallback onTap,
      Animation<double> opacity, Animation<double> scale) {
    return FadeTransition(
      opacity: opacity,
      child: ScaleTransition(
        scale: scale,
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 98, 250, 52),
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
              icon: Icon(icon, color: Colors.black), onPressed: onTap),
        ),
      ),
    );
  }

  Widget _skewDash(Color color, double width, double height,
      Animation<double> opacity, Animation<double> scale) {
    return FadeTransition(
      opacity: opacity,
      child: ScaleTransition(
        scale: scale,
        child: Transform(
          transform: Matrix4.skewY(-0.8),
          child: Container(width: width, height: height, color: color),
        ),
      ),
    );
  }

  Widget _animated(
      {required Widget child,
      required Animation<double> opacity,
      required Animation<double> scale}) {
    return FadeTransition(
      opacity: opacity,
      child: ScaleTransition(scale: scale, child: child),
    );
  }

  @override
  Widget build(BuildContext context) {
    const double baseWidth = 300;
    const double baseHeight = baseWidth * 0.5833;

    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Stack(
        children: [
          if (!_modelLoaded)
            const Center(child: CircularProgressIndicator(color: Colors.green)),
          // Always render WebView
          Positioned.fill(
            top: 90,
            left: 50,
            child: WebViewWidget(controller: _controller),
          ),

          if (_modelLoaded) ...[
            Positioned(
              top: 50,
              left: 20,
              child: _navButton(
                Icons.arrow_back_ios,
                () => Navigator.pop(context),
                _navBackOpacity,
                _navBackScale,
              ),
            ),
            Positioned(
              top: 50,
              left: 350,
              child: _navButton(
                CupertinoIcons.person,
                () => Navigator.pop(context),
                _navPersonOpacity,
                _navPersonScale,
              ),
            ),
            Positioned(
              top: 120,
              left: 25,
              child: _animated(
                opacity: _textOpacity,
                scale: _textScale,
                child: RichText(
                  text: TextSpan(
                    style: GoogleFonts.rajdhani(
                        fontSize: 25, fontWeight: FontWeight.bold),
                    children: const [
                      TextSpan(
                          text: 'Course cover all\n',
                          style: TextStyle(color: Colors.white)),
                      TextSpan(
                          text: 'step of 3d \nwith theory \n',
                          style: TextStyle(color: Colors.black87)),
                      TextSpan(
                          text: 'and pratice',
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 460,
              left: 60,
              right: 0,
              child: _animated(
                opacity: _rightPainterOpacity,
                scale: _rightPainterScale,
                child: SizedBox(
                    height: baseHeight * 3.3,
                    child: CustomPaint(painter: RightSidePainter())),
              ),
            ),
            Positioned(
              top: 210,
              left: -60,
              right: 10,
              child: _animated(
                opacity: _leftPainterOpacity,
                scale: _leftPainterScale,
                child: SizedBox(
                    height: baseHeight * 2.5,
                    child: CustomPaint(painter: LeftSidePainter())),
              ),
            ),
            Positioned(
              top: 250,
              left: 0,
              right: -100,
              child: _animated(
                opacity: _rpsPainterOpacity,
                scale: _rpsPainterScale,
                child: SizedBox(
                    height: baseHeight * 1,
                    width: baseWidth * 1,
                    child: CustomPaint(painter: RPSCustomPainter())),
              ),
            ),
            Positioned(
              top: 280,
              left: 150,
              child: _animated(
                opacity: _titleOpacity,
                scale: _titleScale,
                child: Text('3D Art\nSculpting.',
                    style: GoogleFonts.rajdhani(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87)),
              ),
            ),
            Positioned(
              top: 350,
              left: 150,
              child: _animated(
                opacity: _subtitle1Opacity,
                scale: _subtitle1Scale,
                child: Text('From zero to hero',
                    style: GoogleFonts.rajdhani(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87)),
              ),
            ),
            Positioned(
              top: 365,
              left: 250,
              child: _animated(
                opacity: _subtitle2Opacity,
                scale: _subtitle2Scale,
                child: Text('within 6 months',
                    style: GoogleFonts.rajdhani(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87)),
              ),
            ),
            Positioned(
              top: 385,
              left: 150,
              child: _animated(
                opacity: _findMoreOpacity,
                scale: _findMoreScale,
                child: Text('FIND MORE ↗️',
                    style: GoogleFonts.rajdhani(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown[800])),
              ),
            ),
            Positioned(
              top: 430,
              left: -15,
              child: _animated(
                opacity: _sideImageOpacity,
                scale: _sideImageScale,
                child: Transform.rotate(
                  angle: -1.5708,
                  child: const Image(
                      image: AssetImage('assets/image/side.png'),
                      height: 80,
                      width: 80),
                ),
              ),
            ),
            Positioned(
              top: 510,
              right: 10,
              child: _animated(
                opacity: _skewDashOpacity,
                scale: _skewDashScale,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _skewDash(
                        Colors.black, 6, 70, _skewDashOpacity, _skewDashScale),
                    const SizedBox(height: 20),
                    _skewDash(Colors.black26, 6, 100, _skewDashOpacity,
                        _skewDashScale),
                    const SizedBox(height: 20),
                    _skewDash(
                        Colors.black, 6, 130, _skewDashOpacity, _skewDashScale),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 20,
              child: _navButton(
                CupertinoIcons.search,
                () {},
                _searchBtnOpacity,
                _searchBtnScale,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
