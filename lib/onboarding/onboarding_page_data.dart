import 'package:flutter/material.dart';

/// Data model describing a single onboarding page.
class OnboardingPageData {
  const OnboardingPageData({
    required this.title,
    required this.description,
    required this.icon,
    required this.iconBackgroundColor,
    required this.iconColor,
  });

  final String title;
  final String description;
  final IconData icon;
  final Color iconBackgroundColor;
  final Color iconColor;
}

const String _lorem =
    'Lorem ipsum dolor sit amet, consectetur adipis cing elit, sed do '
    'eiusmod tempor incididunt ut labore et dolore magna aliqua. '
    'Nisl tincidunt eget liam non.';

/// The three onboarding pages shown in the design.
const List<OnboardingPageData> kOnboardingPages = [
  OnboardingPageData(
    title: 'Online Payment',
    description: _lorem,
    icon: Icons.credit_card_rounded,
    iconBackgroundColor: Color(0xFFFDE3E3),
    iconColor: Color(0xFFE53935),
  ),
  OnboardingPageData(
    title: 'Quickly Transfer',
    description: _lorem,
    icon: Icons.swap_horiz_rounded,
    iconBackgroundColor: Color(0xFFFDE3E3),
    iconColor: Color(0xFFE53935),
  ),
  OnboardingPageData(
    title: 'Saving Online',
    description: _lorem,
    icon: Icons.savings_rounded,
    iconBackgroundColor: Color(0xFFFDE3E3),
    iconColor: Color(0xFFE53935),
  ),
];
