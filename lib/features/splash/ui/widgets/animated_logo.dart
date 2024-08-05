import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_images.dart';

class AnimatedLogo extends HookWidget {
  const AnimatedLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final _controller = useAnimationController(duration: const Duration(milliseconds: 2000))
      ..repeat(reverse: true);

    final _fadeAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(_controller);
    final _scaleAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(_controller);

    return AnimatedBuilder(
      animation: _controller,
      child: SvgPicture.asset(
        Assets.assetsImagesLogo,
      ),
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
