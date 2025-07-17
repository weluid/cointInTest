import 'package:freezed_annotation/freezed_annotation.dart';

part 'example_entity.freezed.dart';

part 'example_entity.g.dart';

@freezed
abstract class ExampleEntity with _$ExampleEntity {
  const factory ExampleEntity({
    @Default('') String q,
    @Default('') String a,
  }) = _QuoteEntity;

  factory ExampleEntity.fromJson(Map<String, Object?> json) => _$ExampleEntityFromJson(json);
}
