// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDetailsViewState _$$_ProductDetailsViewStateFromJson(
        Map<String, dynamic> json) =>
    _$_ProductDetailsViewState(
      selectedImage: json['selectedImage'] as String,
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProductDetailsViewStateToJson(
        _$_ProductDetailsViewState instance) =>
    <String, dynamic>{
      'selectedImage': instance.selectedImage,
      'product': instance.product,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$productDetailsViewModelHash() =>
    r'fc1e5f49919d87f77dd1c090aec7d21c12606f02';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$ProductDetailsViewModel
    extends BuildlessAutoDisposeAsyncNotifier<ProductDetailsViewState> {
  late final int id;

  Future<ProductDetailsViewState> build({
    required int id,
  });
}

/// See also [ProductDetailsViewModel].
@ProviderFor(ProductDetailsViewModel)
const productDetailsViewModelProvider = ProductDetailsViewModelFamily();

/// See also [ProductDetailsViewModel].
class ProductDetailsViewModelFamily
    extends Family<AsyncValue<ProductDetailsViewState>> {
  /// See also [ProductDetailsViewModel].
  const ProductDetailsViewModelFamily();

  /// See also [ProductDetailsViewModel].
  ProductDetailsViewModelProvider call({
    required int id,
  }) {
    return ProductDetailsViewModelProvider(
      id: id,
    );
  }

  @override
  ProductDetailsViewModelProvider getProviderOverride(
    covariant ProductDetailsViewModelProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'productDetailsViewModelProvider';
}

/// See also [ProductDetailsViewModel].
class ProductDetailsViewModelProvider
    extends AutoDisposeAsyncNotifierProviderImpl<ProductDetailsViewModel,
        ProductDetailsViewState> {
  /// See also [ProductDetailsViewModel].
  ProductDetailsViewModelProvider({
    required this.id,
  }) : super.internal(
          () => ProductDetailsViewModel()..id = id,
          from: productDetailsViewModelProvider,
          name: r'productDetailsViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$productDetailsViewModelHash,
          dependencies: ProductDetailsViewModelFamily._dependencies,
          allTransitiveDependencies:
              ProductDetailsViewModelFamily._allTransitiveDependencies,
        );

  final int id;

  @override
  bool operator ==(Object other) {
    return other is ProductDetailsViewModelProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Future<ProductDetailsViewState> runNotifierBuild(
    covariant ProductDetailsViewModel notifier,
  ) {
    return notifier.build(
      id: id,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
