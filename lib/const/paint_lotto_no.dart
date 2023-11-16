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
    var tempColor;

    // 1  ~ 10	0xFFFBC400
    // 11 ~ 20	0xFF69C8F2
    // 21 ~ 30	0xFFFF7272
    // 31 ~ 40	0xFFAAAAAA
    // 41 ~ 45	0xFFB0D840

    if (number >= 1 && number <= 10) {
      tempColor = 0xFFFBC400;
      print(number);
    } else if (number >= 11 && number <= 20) {
      tempColor = 0xFF69C8F2;
      print(number);
    } else if (number >= 21 && number <= 30) {
      tempColor = 0xFFFF7272;
      print(number);
    } else if (number >= 31 && number <= 40) {
      tempColor = 0xFFAAAAAA;
      print(number);
    } else if (number >= 41 && number <= 45) {
      tempColor = 0xFFB0D840;
      print(number);
    }

    final Paint circlePaint = Paint()
      ..color = Color(tempColor)
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
