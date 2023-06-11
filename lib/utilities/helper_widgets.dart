// Package Imports
import 'package:flutter/material.dart';

class Spacing extends SizedBox {
  /// Returns a [SizedBox] Widget with the specified horizontal width
  const Spacing.horizontal(double width, {Key? key}) : super(key: key, width: width);

  /// Returns a [SizedBox] Widget with the specified vertical height
  const Spacing.vertical(double height, {Key? key}) : super(key: key, height: height);
}
