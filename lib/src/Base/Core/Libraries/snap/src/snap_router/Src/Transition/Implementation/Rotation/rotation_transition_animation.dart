import 'package:mobile/src/Base/Core/Libraries/snap/snap.dart';
import 'package:mobile/src/Base/Core/Libraries/snap/src/snap_router/Src/Transition/Implementation/Rotation/Animator/rotation_animator.dart';
import '../../Factory/transition_creator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class RotationTransitionAnimation implements TransitionCreator {
  final RotationAnimationOptions options;

  const RotationTransitionAnimation({
    required this.options,
  });

  @override
  Widget animate(
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    /// Primary animation

    return RotationTransition(
      turns: RotationAnimator(options).animator(animation),
      alignment: options.alignment,
      filterQuality: options.filterQuality,
      child: child ,
    ).buildSecondaryTransition(animation: animation, applySecondaryTransition:  options.secondaryTransition);
  }
}
