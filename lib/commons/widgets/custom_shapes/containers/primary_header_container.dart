import 'package:flutter/material.dart';
import 'package:newsapp/commons/widgets/custom_shapes/containers/circular_container.dart';
import 'package:newsapp/commons/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:newsapp/utils/constants/colors.dart';

class APrimaryHeaderContainer extends StatelessWidget {
  const APrimaryHeaderContainer({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ACurvedEdgeWidget(
      child: Container(
        //width: 400,
        color: AColors.primary,
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: ACircularContainer(
                backgroundColor: AColors.textWhite.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: ACircularContainer(
                backgroundColor: AColors.textWhite.withOpacity(0.1),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
