import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:infinite_canvas/infinite_canvas.dart';

class _InfiniteCanvasControllerHook extends Hook<InfiniteCanvasController> {
  const _InfiniteCanvasControllerHook({
    this.nodes = const [],
    this.edges = const [],
    List<Object?>? keys,
  }) : super(keys: keys);

  final List<InfiniteCanvasNode> nodes;
  final List<InfiniteCanvasEdge> edges;

  @override
  _InfiniteCanvasControllerHookState createState() =>
      _InfiniteCanvasControllerHookState();
}

class _InfiniteCanvasControllerHookState
    extends HookState<InfiniteCanvasController, _InfiniteCanvasControllerHook> {
  late InfiniteCanvasController controller;

  @override
  void initHook() {
    super.initHook();
    controller = InfiniteCanvasController(nodes: hook.nodes, edges: hook.edges);
  }

  @override
  InfiniteCanvasController build(BuildContext context) {
    return controller;
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

InfiniteCanvasController useInfiniteCanvasController({
  List<InfiniteCanvasNode> nodes = const [],
  List<InfiniteCanvasEdge> edges = const [],
}) {
  return use(_InfiniteCanvasControllerHook(nodes: nodes, edges: edges));
}
