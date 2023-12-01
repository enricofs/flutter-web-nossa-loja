import 'package:flutter/material.dart';

class Badgee extends StatelessWidget {
  final Widget child;
  final String value;
  final Color? color;
  const Badgee({
    super.key,
    required this.child,
    required this.value,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        child,
        Positioned(
          right: 8,
          top: 8,
          child: Container(
            constraints: const BoxConstraints(
              minHeight: 16,
              minWidth: 16,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: color ?? Theme.of(context).colorScheme.primary,
            ),
            child: Text(
              value,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 10,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),
        )
      ],
    );
  }
}
