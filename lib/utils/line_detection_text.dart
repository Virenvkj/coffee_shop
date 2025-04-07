import 'package:flutter/material.dart';

class LineDetectionText extends StatefulWidget {
  final String text;

  const LineDetectionText({super.key, required this.text});

  @override
  State<LineDetectionText> createState() => _LineDetectionTextState();
}

class _LineDetectionTextState extends State<LineDetectionText> {
  final GlobalKey _textKey = GlobalKey();
  bool isOverflowing = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _checkOverflow());
  }

  void _checkOverflow() {
    final renderBox = _textKey.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox != null) {
      final size = renderBox.size;

      final textPainter = TextPainter(
        text: TextSpan(
          text: widget.text,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
            color: Color(0xff555555),
          ),
        ),
        textDirection: TextDirection.ltr,
        maxLines: 2,
      );

      textPainter.layout(maxWidth: size.width);

      final didOverflow = textPainter.didExceedMaxLines;

      setState(() {
        isOverflowing = didOverflow;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          key: _textKey,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
            color: Color(0xff555555),
          ),
        ),
        const SizedBox(height: 10),
        Text('Overflow: $isOverflowing'),
      ],
    );
  }
}
