

// InfiniteCanvasNode(
//         key: UniqueKey(),
//         label: 'Node $index',
//         allowResize: true,
//         offset: Offset(
//           Random().nextDouble() * 5000,
//           Random().nextDouble() * 5000,
//         ),
//         size: Size.square(size),
//         child: Builder(
//           builder: (context) {
//             return CustomPaint(
//               painter: InlineCustomPainter(
//                 brush: Paint()..color = color,
//                 builder: (brush, canvas, rect) {
//                   // Draw circle
//                   final diameter = min(rect.width, rect.height);
//                   final radius = diameter / 2;
//                   canvas.drawCircle(rect.center, radius, brush);
//                 },
//               ),
//             );
//           },
//         ),
//       );
