import 'package:freezed_annotation/freezed_annotation.dart';

part 'related_entry.freezed.dart';

@freezed
abstract class RelatedEntry with _$RelatedEntry {
  const factory RelatedEntry({
    @required String id,
    @required String text,
  }) = _RelatedEntry;
}
