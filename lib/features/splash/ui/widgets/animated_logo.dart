import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AnimatedLogo extends HookWidget {
  const AnimatedLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final _controller = useAnimationController();
    final _fadeAnimation = useMemoized(
        () => Tween<double>(begin: 0.0, end: 1.0).animate(_controller));
    final _scaleAnimation = useMemoized(
        () => Tween<double>(begin: 0.0, end: 1.0).animate(_controller));

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) => Opacity(
        opacity: _fadeAnimation.value,
        child: Transform.scale(
          scale: _scaleAnimation.value,
          child: child,
        ),
      ),
    );
  }
}
