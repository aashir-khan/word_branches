import 'package:equatable/equatable.dart';

class DictionaryWord extends Equatable {
  final String id;
  final String label;

  DictionaryWord({
    this.id,
    this.label,
  });

  @override
  List<Object> get props => [id, label];
}
