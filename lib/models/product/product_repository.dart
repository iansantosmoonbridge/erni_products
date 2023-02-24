import 'package:products/core/client.dart';
import 'package:products/models/product/product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_repository.g.dart';

@riverpod
IProductRepository productRepository(ProductRepositoryRef ref) {
  return ProductRepository(ref);
}

abstract class IProductRepository {
  Future<List<Product>> findMany({
    required int skip,
    required int limit,
  });
  Future<List<Product>> findManyByCategory({
    required String id,
    required int skip,
    required int limit,
  });
  Future<Product> findUnique({
    required int id,
  });
}

class ProductRepository implements IProductRepository {
  ProductRepository(this.ref);

  final ProductRepositoryRef ref;

  @override
  Future<List<Product>> findMany({
    required int skip,
    required int limit,
  }) {
    return ref
        .read(clientProvider)
        .findManyProducts(
          skip: skip,
          limit: limit,
          select: 'id,title,price,discountPercentage,stock,brand,thumbnail',
        )
        .then((value) {
      return value.products;
    });
  }

  @override
  Future<List<Product>> findManyByCategory({
    required String id,
    required int skip,
    required int limit,
  }) {
    return ref
        .read(clientProvider)
        .findManyProductsByCategory(
          id: id,
          skip: skip,
          limit: limit,
          select: 'id,title,price,discountPercentage,stock,brand,thumbnail',
        )
        .then((value) {
      return value.products;
    });
  }

  @override
  Future<Product> findUnique({
    required int id,
  }) {
    return ref.read(clientProvider).findUniqueProduct(id: id);
  }
}

class FakeProductRepository implements IProductRepository {
  @override
  Future<List<Product>> findMany({
    required int skip,
    required int limit,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<List<Product>> findManyByCategory({
    required String id,
    required int skip,
    required int limit,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<Product> findUnique({
    required int id,
  }) {
    throw UnimplementedError();
  }
}
