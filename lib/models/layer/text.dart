import 'package:flutter/material.dart';

import 'layer.dart';

class TextLayer extends RLayer {
  TextLayer({
    this.style,
    this.size,
    required this.offset,
    required this.text,
  });

  @override
  final Offset offset;

  @override
  double get opacity => 1;

  @override
  final Size? size;

  final TextStyle? style;
  final String text;

  @override
  List<Object?> get props => [offset, opacity, text, style, size];

  TextLayer copyWith({
    Offset? offset,
    TextStyle? style,
    String? text,
    Size? size,
  }) {
    return TextLayer(
      offset: offset ?? this.offset,
      style: style ?? this.style,
      text: text ?? this.text,
      size: size ?? this.size,
    );
  }
}
