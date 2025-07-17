// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomePageState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomePageState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomePageState()';
}


}

/// @nodoc
class $HomePageStateCopyWith<$Res>  {
$HomePageStateCopyWith(HomePageState _, $Res Function(HomePageState) __);
}


/// Adds pattern-matching-related methods to [HomePageState].
extension HomePageStatePatterns on HomePageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _CarsLoading value)?  carsLoading,TResult Function( _ShowEmptyPage value)?  showEmptyPage,TResult Function( _SelectedLocation value)?  selectedLocation,TResult Function( _SearchableContent value)?  searchableContent,TResult Function( _SortVariant value)?  sortVariant,TResult Function( _Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _CarsLoading() when carsLoading != null:
return carsLoading(_that);case _ShowEmptyPage() when showEmptyPage != null:
return showEmptyPage(_that);case _SelectedLocation() when selectedLocation != null:
return selectedLocation(_that);case _SearchableContent() when searchableContent != null:
return searchableContent(_that);case _SortVariant() when sortVariant != null:
return sortVariant(_that);case _Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _CarsLoading value)  carsLoading,required TResult Function( _ShowEmptyPage value)  showEmptyPage,required TResult Function( _SelectedLocation value)  selectedLocation,required TResult Function( _SearchableContent value)  searchableContent,required TResult Function( _SortVariant value)  sortVariant,required TResult Function( _Failure value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _CarsLoading():
return carsLoading(_that);case _ShowEmptyPage():
return showEmptyPage(_that);case _SelectedLocation():
return selectedLocation(_that);case _SearchableContent():
return searchableContent(_that);case _SortVariant():
return sortVariant(_that);case _Failure():
return failure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _CarsLoading value)?  carsLoading,TResult? Function( _ShowEmptyPage value)?  showEmptyPage,TResult? Function( _SelectedLocation value)?  selectedLocation,TResult? Function( _SearchableContent value)?  searchableContent,TResult? Function( _SortVariant value)?  sortVariant,TResult? Function( _Failure value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _CarsLoading() when carsLoading != null:
return carsLoading(_that);case _ShowEmptyPage() when showEmptyPage != null:
return showEmptyPage(_that);case _SelectedLocation() when selectedLocation != null:
return selectedLocation(_that);case _SearchableContent() when searchableContent != null:
return searchableContent(_that);case _SortVariant() when sortVariant != null:
return sortVariant(_that);case _Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  carsLoading,TResult Function()?  showEmptyPage,TResult Function()?  selectedLocation,TResult Function()?  searchableContent,TResult Function( String sortVariant)?  sortVariant,TResult Function( String errorText)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _CarsLoading() when carsLoading != null:
return carsLoading();case _ShowEmptyPage() when showEmptyPage != null:
return showEmptyPage();case _SelectedLocation() when selectedLocation != null:
return selectedLocation();case _SearchableContent() when searchableContent != null:
return searchableContent();case _SortVariant() when sortVariant != null:
return sortVariant(_that.sortVariant);case _Failure() when failure != null:
return failure(_that.errorText);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  carsLoading,required TResult Function()  showEmptyPage,required TResult Function()  selectedLocation,required TResult Function()  searchableContent,required TResult Function( String sortVariant)  sortVariant,required TResult Function( String errorText)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _CarsLoading():
return carsLoading();case _ShowEmptyPage():
return showEmptyPage();case _SelectedLocation():
return selectedLocation();case _SearchableContent():
return searchableContent();case _SortVariant():
return sortVariant(_that.sortVariant);case _Failure():
return failure(_that.errorText);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  carsLoading,TResult? Function()?  showEmptyPage,TResult? Function()?  selectedLocation,TResult? Function()?  searchableContent,TResult? Function( String sortVariant)?  sortVariant,TResult? Function( String errorText)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _CarsLoading() when carsLoading != null:
return carsLoading();case _ShowEmptyPage() when showEmptyPage != null:
return showEmptyPage();case _SelectedLocation() when selectedLocation != null:
return selectedLocation();case _SearchableContent() when searchableContent != null:
return searchableContent();case _SortVariant() when sortVariant != null:
return sortVariant(_that.sortVariant);case _Failure() when failure != null:
return failure(_that.errorText);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements HomePageState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomePageState.initial()';
}


}




/// @nodoc


class _Loading implements HomePageState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomePageState.loading()';
}


}




/// @nodoc


class _CarsLoading implements HomePageState {
  const _CarsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CarsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomePageState.carsLoading()';
}


}




/// @nodoc


class _ShowEmptyPage implements HomePageState {
  const _ShowEmptyPage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShowEmptyPage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomePageState.showEmptyPage()';
}


}




/// @nodoc


class _SelectedLocation implements HomePageState {
  const _SelectedLocation();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectedLocation);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomePageState.selectedLocation()';
}


}




/// @nodoc


class _SearchableContent implements HomePageState {
  const _SearchableContent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchableContent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomePageState.searchableContent()';
}


}




/// @nodoc


class _SortVariant implements HomePageState {
  const _SortVariant({required this.sortVariant});
  

 final  String sortVariant;

/// Create a copy of HomePageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SortVariantCopyWith<_SortVariant> get copyWith => __$SortVariantCopyWithImpl<_SortVariant>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SortVariant&&(identical(other.sortVariant, sortVariant) || other.sortVariant == sortVariant));
}


@override
int get hashCode => Object.hash(runtimeType,sortVariant);

@override
String toString() {
  return 'HomePageState.sortVariant(sortVariant: $sortVariant)';
}


}

/// @nodoc
abstract mixin class _$SortVariantCopyWith<$Res> implements $HomePageStateCopyWith<$Res> {
  factory _$SortVariantCopyWith(_SortVariant value, $Res Function(_SortVariant) _then) = __$SortVariantCopyWithImpl;
@useResult
$Res call({
 String sortVariant
});




}
/// @nodoc
class __$SortVariantCopyWithImpl<$Res>
    implements _$SortVariantCopyWith<$Res> {
  __$SortVariantCopyWithImpl(this._self, this._then);

  final _SortVariant _self;
  final $Res Function(_SortVariant) _then;

/// Create a copy of HomePageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sortVariant = null,}) {
  return _then(_SortVariant(
sortVariant: null == sortVariant ? _self.sortVariant : sortVariant // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Failure implements HomePageState {
  const _Failure(this.errorText);
  

 final  String errorText;

/// Create a copy of HomePageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailureCopyWith<_Failure> get copyWith => __$FailureCopyWithImpl<_Failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Failure&&(identical(other.errorText, errorText) || other.errorText == errorText));
}


@override
int get hashCode => Object.hash(runtimeType,errorText);

@override
String toString() {
  return 'HomePageState.failure(errorText: $errorText)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $HomePageStateCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) _then) = __$FailureCopyWithImpl;
@useResult
$Res call({
 String errorText
});




}
/// @nodoc
class __$FailureCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final _Failure _self;
  final $Res Function(_Failure) _then;

/// Create a copy of HomePageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorText = null,}) {
  return _then(_Failure(
null == errorText ? _self.errorText : errorText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
