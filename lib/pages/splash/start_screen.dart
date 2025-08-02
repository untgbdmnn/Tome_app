import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StartScreen extends ConsumerStatefulWidget{
  const StartScreen({super.key});

  @override
  ConsumerState<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends ConsumerState<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Start Screen'),
    );
  }
}