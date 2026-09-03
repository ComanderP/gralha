import "package:flutter/widget_previews.dart";
import "package:flutter/widgets.dart";

@Preview(group: "Placeholders", name: "Story Cover")
Widget coverPlaceholderPreview() => const CoverPlaceholder(width: 80, height: 100);

class const CoverPlaceholder({
  super.key,
  required final double width,
  required final double height,
}) extends StatelessWidget {
  final border = const Color(0xFFAAB6C7);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      foregroundDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: border, width: 1.5),
      ),
      clipBehavior: Clip.antiAlias,
      child: CustomPaint(painter: _PlaceholderPainter()),
    );
  }
}

class _PlaceholderPainter extends CustomPainter {
  final backgroundColour = const Color(0xFFEFF1F6);
  final stripeColour = const Color(0xFFE2E8F1);

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRect(Offset.zero & size, Paint()..color = backgroundColour);

    final stripePaint = Paint()..color = stripeColour;
    const stepSize = 15.0;
    for (double x = -size.height; x < size.width; x += stepSize) {
      final path = Path()
        ..moveTo(x, size.height)
        ..lineTo(x + size.height, 0)
        ..lineTo(x + size.height + stepSize / 2, 0)
        ..lineTo(x + stepSize / 2, size.height)
        ..close();
      canvas.drawPath(path, stripePaint);
    }
  }

  @override
  bool shouldRepaint(_PlaceholderPainter old) =>
      old.backgroundColour != backgroundColour || old.stripeColour != stripeColour;
}
