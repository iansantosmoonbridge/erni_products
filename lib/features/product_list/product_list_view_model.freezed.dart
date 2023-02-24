// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_list_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductListViewState _$ProductListViewStateFromJson(Map<String, dynamic> json) {
  return _ProductListViewState.fromJson(json);
}

/// @nodoc
mixin _$ProductListViewState {
  String? get selectedCategory => throw _privateConstructorUsedError;
  List<String> get categories => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductListViewStateCopyWith<ProductListViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListViewStateCopyWith<$Res> {
  factory $ProductListViewStateCopyWith(ProductListViewState value,
          $Res Function(ProductListViewState) then) =
      _$ProductListViewStateCopyWithImpl<$Res, ProductListViewState>;
  @useResult
  $Res call(
      {String? selectedCategory,
      List<String> categories,
      List<Product> products});
}

/// @nodoc
class _$ProductListViewStateCopyWithImpl<$Res,
        $Val extends ProductListViewState>
    implements $ProductListViewStateCopyWith<$Res> {
  _$ProductListViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCategory = freezed,
    Object? categories = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      selectedCategory: freezed == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductListViewStateCopyWith<$Res>
    implements $ProductListViewStateCopyWith<$Res> {
  factory _$$_ProductListViewStateCopyWith(_$_ProductListViewState value,
          $Res Function(_$_ProductListViewState) then) =
      __$$_ProductListViewStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? selectedCategory,
      List<String> categories,
      List<Product> products});
}

/// @nodoc
class __$$_ProductListViewStateCopyWithImpl<$Res>
    extends _$ProductListViewStateCopyWithImpl<$Res, _$_ProductListViewState>
    implements _$$_ProductListViewStateCopyWith<$Res> {
  __$$_ProductListViewStateCopyWithImpl(_$_ProductListViewState _value,
      $Res Function(_$_ProductListViewState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCategory = freezed,
    Object? categories = null,
    Object? products = null,
  }) {
    return _then(_$_ProductListViewState(
      selectedCategory: freezed == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductListViewState extends _ProductListViewState {
  const _$_ProductListViewState(
      {required this.selectedCategory,
      required final List<String> categories,
      required final List<Product> products})
      : _categories = categories,
        _products = products,
        super._();

  factory _$_ProductListViewState.fromJson(Map<String, dynamic> json) =>
      _$$_ProductListViewStateFromJson(json);

  @override
  final String? selectedCategory;
  final List<String> _categories;
  @override
  List<String> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'ProductListViewState(selectedCategory: $selectedCategory, categories: $categories, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductListViewState &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedCategory,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductListViewStateCopyWith<_$_ProductListViewState> get copyWith =>
      __$$_ProductListViewStateCopyWithImpl<_$_ProductListViewState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductListViewStateToJson(
      this,
    );
  }
}

abstract class _ProductListViewState extends ProductListViewState {
  const factory _ProductListViewState(
      {required final String? selectedCategory,
      required final List<String> categories,
      required final List<Product> products}) = _$_ProductListViewState;
  const _ProductListViewState._() : super._();

  factory _ProductListViewState.fromJson(Map<String, dynamic> json) =
      _$_ProductListViewState.fromJson;

  @override
  String? get selectedCategory;
  @override
  List<String> get categories;
  @override
  List<Product> get products;
  @override
  @JsonKey(ignore: true)
  _$$_ProductListViewStateCopyWith<_$_ProductListViewState> get copyWith =>
      throw _privateConstructorUsedError;
}
