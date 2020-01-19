import 'package:equatable/equatable.dart';

class QuerySearchSingleResult extends Equatable {
  final String id;
  final String label;

  QuerySearchSingleResult({
    this.id,
    this.label,
  });

  @override
  List<Object> get props => [id, label];
}
