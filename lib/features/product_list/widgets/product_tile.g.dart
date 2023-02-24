// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_tile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductListTileArgs _$$_ProductListTileArgsFromJson(
        Map<String, dynamic> json) =>
    _$_ProductListTileArgs(
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProductListTileArgsToJson(
        _$_ProductListTileArgs instance) =>
    <String, dynamic>{
      'product': instance.product,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$productListTileArgsHash() =>
    r'0c3d3c082bd8212447ac4861056374b80ae87ba7';

/// See also [productListTileArgs].
@ProviderFor(productListTileArgs)
final productListTileArgsProvider =
    AutoDisposeProvider<ProductListTileArgs>.internal(
  productListTileArgs,
  name: r'productListTileArgsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$productListTileArgsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ProductListTileArgsRef = AutoDisposeProviderRef<ProductListTileArgs>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
