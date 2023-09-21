import 'package:flutter/material.dart';
import 'package:mini_project/constants/colors.dart';

class TextStyling {
  static TextStyle userFocus = TextStyle(
    color: AppColors.blackShade001,
    fontSize: 22,
    fontWeight: FontWeight.w600
  );
  static TextStyle searchBar = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: AppColors.blackShade06
  );
  static TextStyle addressTimelineHead = TextStyle(
    fontWeight: FontWeight.w800,
    fontSize: 11,
    color: AppColors.blackShade045
  );
  static TextStyle addressTimeline = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: AppColors.blackShade001
  );
}