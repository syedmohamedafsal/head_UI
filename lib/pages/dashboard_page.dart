import 'package:animationhead/widget/main_left_side_custom_painter.dart';
import 'package:animationhead/widget/main_side_custom_painter.dart';
import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart'; // GLB 3D viewer

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Left Decoration
            Positioned(
              left: 0,
              child: CustomPaint(
                size: Size(width * 0.3, width * 0.6),
                painter: LeftSideCustomPainter(),
              ),
            ),

            // Right Decoration
            Positioned(
              right: 0,
              child: CustomPaint(
                size: Size(width * 0.3, width * 0.6),
                painter: RightSideCustomPainter(),
              ),
            ),

            // Center Card with 3D model
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Top Navigation
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Online catalog",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold)),
                      Icon(Icons.camera_alt_outlined, color: Colors.white),
                    ],
                  ),
                ),

                const SizedBox(height: 10),

                // 3D Model Viewer
                const SizedBox(
                  height: 250,
                  child: ModelViewer(
                    src: 'assets/model/head.glb', // Provide your GLB path
                    alt: "Angular Head",
                    autoRotate: true,
                    cameraControls: true,
                    disableZoom: true,
                    backgroundColor: Colors.transparent,
                  ),
                ),

                const SizedBox(height: 20),

                // Product Title
                const Text(
                  "ANGULAR\n3D HEAD",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),

                const SizedBox(height: 12),

                // Icon row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.favorite_border, color: Colors.white),
                    SizedBox(width: 12),
                    Icon(Icons.share_outlined, color: Colors.white),
                    SizedBox(width: 12),
                    Icon(Icons.bookmark_border, color: Colors.white),
                  ],
                ),

                const SizedBox(height: 20),

                // Price
                const Text("\$79",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),

                const SizedBox(height: 20),

                // Purchase Button
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFB7FF1D),
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60, vertical: 14),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  child: const Text("Purchase",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ),
              ],
            ),

            // Left and Right Arrows
            Positioned(
              left: 30,
              child: CircleAvatar(
                backgroundColor: const Color(0xFFB7FF1D),
                child: const Icon(Icons.arrow_back, color: Colors.black),
              ),
            ),
            Positioned(
              right: 30,
              child: CircleAvatar(
                backgroundColor: const Color(0xFFB7FF1D),
                child: const Icon(Icons.arrow_forward, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
