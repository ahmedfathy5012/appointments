import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:mobile/src/Base/Core/Libraries/snap/snap.dart';
import 'package:mobile/src/Base/Core/Libraries/snap/src/snap_router/Src/Transition/Factory/transition_creator.dart';
import 'package:mobile/src/Base/Core/Libraries/snap/src/snap_router/Src/Transition/Implementation/Scale/Animator/scale_animator.dart';


class ScaleTransitionAnimation implements TransitionCreator {
  final ScaleAnimationOptions options;
  const ScaleTransitionAnimation({this.options = const ScaleAnimationOptions()});

  @override
  Widget animate(Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {

    return ScaleTransition(
      scale:  ScaleAnimator(options).animator(animation),
      child: child,
    ).buildSecondaryTransition(animation: animation, applySecondaryTransition: options.secondaryTransition);
  }
}
