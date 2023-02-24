// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_tile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductListTileArgs _$ProductListTileArgsFromJson(Map<String, dynamic> json) {
  return _ProductListTileArgs.fromJson(json);
}

/// @nodoc
mixin _$ProductListTileArgs {
  Product get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductListTileArgsCopyWith<ProductListTileArgs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListTileArgsCopyWith<$Res> {
  factory $ProductListTileArgsCopyWith(
          ProductListTileArgs value, $Res Function(ProductListTileArgs) then) =
      _$ProductListTileArgsCopyWithImpl<$Res, ProductListTileArgs>;
  @useResult
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$ProductListTileArgsCopyWithImpl<$Res, $Val extends ProductListTileArgs>
    implements $ProductListTileArgsCopyWith<$Res> {
  _$ProductListTileArgsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductListTileArgsCopyWith<$Res>
    implements $ProductListTileArgsCopyWith<$Res> {
  factory _$$_ProductListTileArgsCopyWith(_$_ProductListTileArgs value,
          $Res Function(_$_ProductListTileArgs) then) =
      __$$_ProductListTileArgsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Product product});

  @override
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$_ProductListTileArgsCopyWithImpl<$Res>
    extends _$ProductListTileArgsCopyWithImpl<$Res, _$_ProductListTileArgs>
    implements _$$_ProductListTileArgsCopyWith<$Res> {
  __$$_ProductListTileArgsCopyWithImpl(_$_ProductListTileArgs _value,
      $Res Function(_$_ProductListTileArgs) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$_ProductListTileArgs(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductListTileArgs extends _ProductListTileArgs {
  const _$_ProductListTileArgs({required this.product}) : super._();

  factory _$_ProductListTileArgs.fromJson(Map<String, dynamic> json) =>
      _$$_ProductListTileArgsFromJson(json);

  @override
  final Product product;

  @override
  String toString() {
    return 'ProductListTileArgs(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductListTileArgs &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductListTileArgsCopyWith<_$_ProductListTileArgs> get copyWith =>
      __$$_ProductListTileArgsCopyWithImpl<_$_ProductListTileArgs>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductListTileArgsToJson(
      this,
    );
  }
}

abstract class _ProductListTileArgs extends ProductListTileArgs {
  const factory _ProductListTileArgs({required final Product product}) =
      _$_ProductListTileArgs;
  const _ProductListTileArgs._() : super._();

  factory _ProductListTileArgs.fromJson(Map<String, dynamic> json) =
      _$_ProductListTileArgs.fromJson;

  @override
  Product get product;
  @override
  @JsonKey(ignore: true)
  _$$_ProductListTileArgsCopyWith<_$_ProductListTileArgs> get copyWith =>
      throw _privateConstructorUsedError;
}
