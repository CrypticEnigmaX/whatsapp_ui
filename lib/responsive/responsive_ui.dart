import 'package:flutter/material.dart';

class ResponsiveUi extends StatelessWidget {
  final Widget webScreen;
  final Widget mobileSreen;
  const ResponsiveUi({
    super.key,
    required this.mobileSreen,
    required this.webScreen,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 900) {
          return webScreen;
        }
        return mobileSreen;
      },
    );
  }
}
