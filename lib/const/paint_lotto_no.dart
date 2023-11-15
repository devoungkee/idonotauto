import 'package:flutter/material.dart';

class Paint_LottoNo extends StatelessWidget {
  final int number;

  Paint_LottoNo({required this.number});
  // const Paint_LottoNo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:50.0,
      height: 50.0,
      child: CustomPaint(
            painter: PaintLottoNo(number: number),
      ),
    );
  }
}

class PaintLottoNo extends CustomPainter {
  final int number;

  PaintLottoNo({required this.number});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint circlePaint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    final Paint textPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final center = size.center(Offset.zero);
    final radius = size.width / 2;

    // 원 그리기
    canvas.drawCircle(center, radius, circlePaint);

    // 숫자 그리기
    final textStyle = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 20.0,
    );

    final textSpan = TextSpan(
      text: number.toString(),
      style: textStyle,
    );

    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );

    textPainter.layout();

    final textCenter = Offset(
      center.dx - textPainter.width / 2,
      center.dy - textPainter.height / 2,
    );

    textPainter.paint(canvas, textCenter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}
