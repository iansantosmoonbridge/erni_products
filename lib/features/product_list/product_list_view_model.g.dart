// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_list_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductListViewState _$$_ProductListViewStateFromJson(
        Map<String, dynamic> json) =>
    _$_ProductListViewState(
      selectedCategory: json['selectedCategory'] as String?,
      categories: (json['categories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      products: (json['products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProductListViewStateToJson(
        _$_ProductListViewState instance) =>
    <String, dynamic>{
      'selectedCategory': instance.selectedCategory,
      'categories': instance.categories,
      'products': instance.products,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$productListViewModelHash() =>
    r'06a0b627077f3ee2f6fcfc86b02ace59b4ceed03';

/// See also [ProductListViewModel].
@ProviderFor(ProductListViewModel)
final productListViewModelProvider = AutoDisposeAsyncNotifierProvider<
    ProductListViewModel, ProductListViewState>.internal(
  ProductListViewModel.new,
  name: r'productListViewModelProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$productListViewModelHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ProductListViewModel = AutoDisposeAsyncNotifier<ProductListViewState>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
