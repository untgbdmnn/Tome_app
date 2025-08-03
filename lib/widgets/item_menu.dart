import 'package:flutter/material.dart';

class ItemMenu extends StatelessWidget{
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const ItemMenu({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(title, style: TextStyle(color: Colors.black)),
      onTap: onTap,
    );
  }
}