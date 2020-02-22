import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class IdTextType extends Equatable {
  final String id;
  final String text;
  final String type;

  IdTextType({
    @required this.id,
    @required this.text,
    @required this.type,
  });

  @override
  List<Object> get props => [id, text];
}
