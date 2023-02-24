// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_details_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductDetailsViewState _$ProductDetailsViewStateFromJson(
    Map<String, dynamic> json) {
  return _ProductDetailsViewState.fromJson(json);
}

/// @nodoc
mixin _$ProductDetailsViewState {
  String get selectedImage => throw _privateConstructorUsedError;
  Product get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailsViewStateCopyWith<ProductDetailsViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsViewStateCopyWith<$Res> {
  factory $ProductDetailsViewStateCopyWith(ProductDetailsViewState value,
          $Res Function(ProductDetailsViewState) then) =
      _$ProductDetailsViewStateCopyWithImpl<$Res, ProductDetailsViewState>;
  @useResult
  $Res call({String selectedImage, Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$ProductDetailsViewStateCopyWithImpl<$Res,
        $Val extends ProductDetailsViewState>
    implements $ProductDetailsViewStateCopyWith<$Res> {
  _$ProductDetailsViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedImage = null,
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      selectedImage: null == selectedImage
          ? _value.selectedImage
          : selectedImage // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_ProductDetailsViewStateCopyWith<$Res>
    implements $ProductDetailsViewStateCopyWith<$Res> {
  factory _$$_ProductDetailsViewStateCopyWith(_$_ProductDetailsViewState value,
          $Res Function(_$_ProductDetailsViewState) then) =
      __$$_ProductDetailsViewStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String selectedImage, Product product});

  @override
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$_ProductDetailsViewStateCopyWithImpl<$Res>
    extends _$ProductDetailsViewStateCopyWithImpl<$Res,
        _$_ProductDetailsViewState>
    implements _$$_ProductDetailsViewStateCopyWith<$Res> {
  __$$_ProductDetailsViewStateCopyWithImpl(_$_ProductDetailsViewState _value,
      $Res Function(_$_ProductDetailsViewState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedImage = null,
    Object? product = null,
  }) {
    return _then(_$_ProductDetailsViewState(
      selectedImage: null == selectedImage
          ? _value.selectedImage
          : selectedImage // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductDetailsViewState extends _ProductDetailsViewState {
  const _$_ProductDetailsViewState(
      {required this.selectedImage, required this.product})
      : super._();

  factory _$_ProductDetailsViewState.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDetailsViewStateFromJson(json);

  @override
  final String selectedImage;
  @override
  final Product product;

  @override
  String toString() {
    return 'ProductDetailsViewState(selectedImage: $selectedImage, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDetailsViewState &&
            (identical(other.selectedImage, selectedImage) ||
                other.selectedImage == selectedImage) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, selectedImage, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductDetailsViewStateCopyWith<_$_ProductDetailsViewState>
      get copyWith =>
          __$$_ProductDetailsViewStateCopyWithImpl<_$_ProductDetailsViewState>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDetailsViewStateToJson(
      this,
    );
  }
}

abstract class _ProductDetailsViewState extends ProductDetailsViewState {
  const factory _ProductDetailsViewState(
      {required final String selectedImage,
      required final Product product}) = _$_ProductDetailsViewState;
  const _ProductDetailsViewState._() : super._();

  factory _ProductDetailsViewState.fromJson(Map<String, dynamic> json) =
      _$_ProductDetailsViewState.fromJson;

  @override
  String get selectedImage;
  @override
  Product get product;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDetailsViewStateCopyWith<_$_ProductDetailsViewState>
      get copyWith => throw _privateConstructorUsedError;
}
