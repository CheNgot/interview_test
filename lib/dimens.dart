import 'dart:math';
import 'dart:ui';


const guidelineBaseWidth = 375;
const guidelineBaseHeight = 812;


double get screenWidth => window.physicalSize.width / window.devicePixelRatio;

double get screenHeight => window.physicalSize.height / window.devicePixelRatio;

double get scaleWidth => screenWidth / guidelineBaseWidth;

double get scaleHeight => screenHeight / guidelineBaseHeight;

double get scaleText => min(scaleWidth, scaleHeight);

extension ScreenExtension on num {
  double get w => this * scaleWidth; // Width Scale
  double get h => this * scaleHeight; // Height Scale
  double get t => this * scaleText; // Text Scale
  double get r => this * scaleText; // Radius Scale
}
