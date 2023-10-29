import 'dart:math';

import 'package:example/hooks/infinite_canvas_controller_hook.dart';
import 'package:example/nodes/textbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:infinite_canvas/infinite_canvas.dart';
import 'package:random_color/random_color.dart';

class Aisha extends HookWidget {
  // @override
  // void initState() {
  //   super.initState();

  //   // TODO: add the nodes
  //   final nodes = <InfiniteCanvasNode>[];

  //   // final colors = RandomColor();
  //   // final nodes = List.generate(100, (index) {
  //   //   final color = colors.randomColor();
  //   //   final size = Random().nextDouble() * 200 + 100;
  //   //   return InfiniteCanvasNode(
  //   //     key: UniqueKey(),
  //   //     label: 'Node $index',
  //   //     allowResize: true,
  //   //     offset: Offset(
  //   //       Random().nextDouble() * 5000,
  //   //       Random().nextDouble() * 5000,
  //   //     ),
  //   //     size: Size.square(size),
  //   //     child: Builder(
  //   //       builder: (context) {
  //   //         return CustomPaint(
  //   //           painter: InlineCustomPainter(
  //   //             brush: Paint()..color = color,
  //   //             builder: (brush, canvas, rect) {
  //   //               // Draw circle
  //   //               final diameter = min(rect.width, rect.height);
  //   //               final radius = diameter / 2;
  //   //               canvas.drawCircle(rect.center, radius, brush);
  //   //             },
  //   //           ),
  //   //         );
  //   //       },
  //   //     ),
  //   //   );
  //   // });

  //   // Generate random edges
  //   final edges = <InfiniteCanvasEdge>[];

  //   // TODO: add the edges
  //   // for (int i = 0; i < nodes.length; i++) {
  //   //   final from = nodes[i];
  //   //   final to = nodes[Random().nextInt(nodes.length)];
  //   //   if (from != to) {
  //   //     edges.add(InfiniteCanvasEdge(
  //   //       from: from.key,
  //   //       to: to.key,
  //   //       label: 'Edge $i',
  //   //     ));
  //   //   }
  //   // }
  // }

  @override
  Widget build(BuildContext context) {
    final controller = useInfiniteCanvasController(nodes: [], edges: []);
    final node = generateTextBox(
        controller.mousePosition,
        Size(
          Random().nextDouble() * 200 + 100,
          Random().nextDouble() * 200 + 100,
        ),
        "labelText");

    controller.add(node);
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Infinite Canvas Example'),
      //   centerTitle: false,
      // ),
      body: InfiniteCanvas(
        drawVisibleOnly: true,
        canAddEdges: true,
        controller: controller,
        menus: [],
      ),
    );
  }
}

class InlineCustomPainter extends CustomPainter {
  const InlineCustomPainter({
    required this.brush,
    required this.builder,
    this.isAntiAlias = true,
  });
  final Paint brush;
  final bool isAntiAlias;
  final void Function(Paint paint, Canvas canvas, Rect rect) builder;

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;
    brush.isAntiAlias = isAntiAlias;
    canvas.save();
    builder(brush, canvas, rect);
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
