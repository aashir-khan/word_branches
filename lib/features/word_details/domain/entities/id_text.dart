import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class IdText extends Equatable {
  final String id;
  final String text;

  const IdText({
    @required this.id,
    @required this.text,
  });

  @override
  List<Object> get props => [id, text];
}
