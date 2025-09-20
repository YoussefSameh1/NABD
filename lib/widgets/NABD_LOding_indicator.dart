import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NabdLoadingIndicator extends StatefulWidget {
  const NabdLoadingIndicator({super.key});

  @override
  State<NabdLoadingIndicator> createState() => _NabdLoadingIndicatorState();
}

class _NabdLoadingIndicatorState extends State<NabdLoadingIndicator>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        'assets/animation/NABD loading indicator.json',
        controller: _controller,
        width: 150,
        height: 150,
        onLoaded: (composition) {
          _controller
            ..duration = composition.duration
            ..repeat(min: 0.5, max: 1.0);
        },
      ),
    );
  }
}
