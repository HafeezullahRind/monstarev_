import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _buildSenderBubble(),
          const SizedBox(height: 5),
          _buildOwnBubble(),
        ],
      ),
    );
  }

  Row _buildSenderBubble() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        CustomPaint(
          painter: CustomChatBubble(isOwn: false, color: Colors.white),
          child: Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Sender Message'),
          ),
        ),
      ],
    );
  }

  Row _buildOwnBubble() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        CustomPaint(
          painter: CustomChatBubble(isOwn: true, color: Colors.black),
          child: Container(
            padding: const EdgeInsets.all(10),
            child: const Text(
              'My Message',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomChatBubble extends CustomPainter {
  CustomChatBubble({required this.color, required this.isOwn});

  final Color color;
  final bool isOwn;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;

    Path paintBubbleTail() {
      Path path = Path();
      if (!isOwn) {
        path
          ..moveTo(5, size.height - 5)
          ..quadraticBezierTo(-5, size.height, -16, size.height - 4)
          ..quadraticBezierTo(-5, size.height - 5, 0, size.height - 17);
      } else {
        path
          ..moveTo(size.width - 6, size.height - 4)
          ..quadraticBezierTo(
              size.width + 5, size.height, size.width + 16, size.height - 4)
          ..quadraticBezierTo(
              size.width + 5, size.height - 5, size.width, size.height - 17);
      }
      return path;
    }

    final RRect bubbleBody = RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width, size.height),
        const Radius.circular(16));
    final Path bubbleTail = paintBubbleTail();

    canvas.drawRRect(bubbleBody, paint);
    canvas.drawPath(bubbleTail, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
