import 'package:flutter/material.dart';
import 'package:infinite_canvas/infinite_canvas.dart';

InfiniteCanvasNode generateTextBox(
  Offset offset,
  Size size,
  String labelText,
) {
  return InfiniteCanvasNode(
    key: UniqueKey(),
    allowResize: true,
    offset: offset,
    size: size,
    child: Builder(
      builder: (context) {
        return Container(
          child: TextField(
            maxLines: null,
            expands: true,
            decoration: InputDecoration.collapsed(
                hintText: labelText, hintStyle: TextStyle(color: Colors.grey)),
            style: TextStyle(color: Colors.black),
          ),
          decoration: BoxDecoration(
            color: infiniteCanvasGreyWhite,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.all(8),
        );
      },
    ),
  );
}
