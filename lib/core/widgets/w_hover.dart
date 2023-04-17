import 'package:flutter/material.dart';

class WHoverAnimation extends StatefulWidget {
  final bool isPersistentHover;
  final VoidCallback? onActive;
  final VoidCallback? onRelease;
  final Function onTap;
  final Widget child;
  final bool isDisabled;
  final List<BoxShadow>? boxShadow;
  final Color activeColor;
  final Color color;
  final BorderRadius? borderRadius;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double? height;
  final double? width;
  const WHoverAnimation({
    Key? key,
    this.onActive,
    this.onRelease,
    required this.onTap,
    required this.child,
    this.isDisabled = false,
    this.boxShadow,
    required this.activeColor,
    required this.color,
    this.borderRadius,
    this.padding,
    this.margin,
    this.height,
    this.width,
    this.isPersistentHover = false,
  }) : super(key: key);

  @override
  State<WHoverAnimation> createState() => _WHoverAnimationState();
}

class _WHoverAnimationState extends State<WHoverAnimation> {
  bool isClicking = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        if (!widget.isDisabled) {
          widget.onTap();
        }
      },
      onPanDown: (_) {
        setState(() {
          isClicking = true;
        });
        if (!widget.isDisabled) {
          if (widget.onActive != null) {
            widget.onActive!();
          }
        }
      },
      onPanEnd: (_) {
        setState(() {
          isClicking = false;
        });
        if (!widget.isDisabled) {
          if (widget.onRelease != null) {
            widget.onRelease!();
          }
        }
      },
      onPanCancel: () {
        setState(() {
          isClicking = false;
        });
        if (!widget.isDisabled) {
          if (widget.onRelease != null) {
            widget.onRelease!();
          }
        }
      },
      child: Container(
        alignment: Alignment.center,
        height: widget.height,
        padding: widget.padding,
        margin: widget.margin,
        width: widget.width,
        decoration: BoxDecoration(
          color: widget.isPersistentHover
              ? widget.activeColor
              : isClicking
                  ? widget.activeColor
                  : widget.color,
          boxShadow: widget.boxShadow,
          borderRadius: widget.borderRadius,
        ),
        child: widget.child,
      ),
    );
  }
}
