import 'package:flutter/material.dart';

import '../../constants.dart';

class Skelton extends StatefulWidget {
  final double? height, width;
  const Skelton({super.key, this.height, this.width});

  @override
  State<Skelton> createState() => _SkeltonState();
}

class _SkeltonState extends State<Skelton> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Alignment> _beginAnimation;

  @override
  void initState() {
    super.initState();

    initAnimation();

    _animationController.repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return Container(
          height: widget.height,
          width: widget.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                kSeconderyColor,
                const Color.fromARGB(255, 255, 255, 255),
                kSeconderyColor.withOpacity(0.6),
                kSeconderyColor.withOpacity(0.4),
                kSeconderyColor.withOpacity(0.2),
              ],
              stops: const [
                0.1,
                0.3,
                0.1,
                0.1,
                0.4,
              ],
              begin: _beginAnimation.value,
              end: Alignment.bottomRight,
              tileMode: TileMode.clamp,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
        );
      },
    );
  }

  void initAnimation() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3), // equal 31.7 years
    );

    _beginAnimation = TweenSequence<Alignment>(
      [
        TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.topLeft, end: Alignment.bottomRight),
          weight: 1,
        ),
        TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.bottomRight, end: Alignment.topLeft),
          weight: 1,
        ),
      ],
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.ease,
      ),
    );
  }
}
