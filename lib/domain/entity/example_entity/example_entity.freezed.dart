// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'example_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
ExampleEntity _$ExampleEntityFromJson(
  Map<String, dynamic> json
) {
    return _QuoteEntity.fromJson(
      json
    );
}

/// @nodoc
mixin _$ExampleEntity {

 String get q; String get a;
/// Create a copy of ExampleEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExampleEntityCopyWith<ExampleEntity> get copyWith => _$ExampleEntityCopyWithImpl<ExampleEntity>(this as ExampleEntity, _$identity);

  /// Serializes this ExampleEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExampleEntity&&(identical(other.q, q) || other.q == q)&&(identical(other.a, a) || other.a == a));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,q,a);

@override
String toString() {
  return 'ExampleEntity(q: $q, a: $a)';
}


}

/// @nodoc
abstract mixin class $ExampleEntityCopyWith<$Res>  {
  factory $ExampleEntityCopyWith(ExampleEntity value, $Res Function(ExampleEntity) _then) = _$ExampleEntityCopyWithImpl;
@useResult
$Res call({
 String q, String a
});




}
/// @nodoc
class _$ExampleEntityCopyWithImpl<$Res>
    implements $ExampleEntityCopyWith<$Res> {
  _$ExampleEntityCopyWithImpl(this._self, this._then);

  final ExampleEntity _self;
  final $Res Function(ExampleEntity) _then;

/// Create a copy of ExampleEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? q = null,Object? a = null,}) {
  return _then(_self.copyWith(
q: null == q ? _self.q : q // ignore: cast_nullable_to_non_nullable
as String,a: null == a ? _self.a : a // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ExampleEntity].
extension ExampleEntityPatterns on ExampleEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuoteEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuoteEntity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuoteEntity value)  $default,){
final _that = this;
switch (_that) {
case _QuoteEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuoteEntity value)?  $default,){
final _that = this;
switch (_that) {
case _QuoteEntity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String q,  String a)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuoteEntity() when $default != null:
return $default(_that.q,_that.a);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String q,  String a)  $default,) {final _that = this;
switch (_that) {
case _QuoteEntity():
return $default(_that.q,_that.a);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String q,  String a)?  $default,) {final _that = this;
switch (_that) {
case _QuoteEntity() when $default != null:
return $default(_that.q,_that.a);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuoteEntity implements ExampleEntity {
  const _QuoteEntity({this.q = '', this.a = ''});
  factory _QuoteEntity.fromJson(Map<String, dynamic> json) => _$QuoteEntityFromJson(json);

@override@JsonKey() final  String q;
@override@JsonKey() final  String a;

/// Create a copy of ExampleEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuoteEntityCopyWith<_QuoteEntity> get copyWith => __$QuoteEntityCopyWithImpl<_QuoteEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuoteEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuoteEntity&&(identical(other.q, q) || other.q == q)&&(identical(other.a, a) || other.a == a));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,q,a);

@override
String toString() {
  return 'ExampleEntity(q: $q, a: $a)';
}


}

/// @nodoc
abstract mixin class _$QuoteEntityCopyWith<$Res> implements $ExampleEntityCopyWith<$Res> {
  factory _$QuoteEntityCopyWith(_QuoteEntity value, $Res Function(_QuoteEntity) _then) = __$QuoteEntityCopyWithImpl;
@override @useResult
$Res call({
 String q, String a
});




}
/// @nodoc
class __$QuoteEntityCopyWithImpl<$Res>
    implements _$QuoteEntityCopyWith<$Res> {
  __$QuoteEntityCopyWithImpl(this._self, this._then);

  final _QuoteEntity _self;
  final $Res Function(_QuoteEntity) _then;

/// Create a copy of ExampleEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? q = null,Object? a = null,}) {
  return _then(_QuoteEntity(
q: null == q ? _self.q : q // ignore: cast_nullable_to_non_nullable
as String,a: null == a ? _self.a : a // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
