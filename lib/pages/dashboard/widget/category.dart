import 'package:flutter/material.dart';

class ItemChoice {
  const ItemChoice({
    required this.title,
    required this.icon,
  });

  final String title;
  final IconData icon;
}

List<ItemChoice> categoryItemChoices = [
  const ItemChoice(
    title: 'All',
    icon: Icons.all_inclusive,
  ),
];