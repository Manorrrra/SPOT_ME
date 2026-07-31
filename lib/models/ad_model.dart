import 'package:flutter/material.dart';

class AdModel {
  final String brand;
  final String title;
  final String subtitle;
  final String ctaText;
  final IconData icon;
  final Color color;

  /// Sports this ad is relevant to. Empty list = shown to everyone.
  final List<String> sportTags;

  const AdModel({
    required this.brand,
    required this.title,
    required this.subtitle,
    required this.ctaText,
    required this.icon,
    required this.color,
    this.sportTags = const [],
  });
}
