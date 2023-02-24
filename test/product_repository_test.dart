import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:products/models/product/product.dart';
import 'package:products/models/product/product_repository.dart';

class MockProductRepository extends Mock implements IProductRepository {}

void main() {
  late IProductRepository repository;

  setUp(() {
    repository = MockProductRepository();
  });

  group('ProductRepository', () {
    test('findMany returns a list of products', () async {
      // Arrange
      final products = List.generate(
        10,
        (index) {
          return Product(
            id: index,
            title: 'Product $index',
            brand: '',
            category: '',
            description: '',
            thumbnail: '',
            discountPercentage: 0,
            price: 0,
            rating: 0,
            stock: 0,
            images: [],
          );
        },
      );

      when(() {
        return repository.findMany(
          skip: any(named: 'skip'),
          limit: any(named: 'limit'),
        );
      }).thenAnswer((_) async {
        return products;
      });

      // Act
      final result = await repository.findMany(
        skip: 0,
        limit: 10,
      );

      // Assert
      expect(result, equals(products));
    });

    test('findManyByCategory returns a list of products', () async {
      // Arrange
      const categoryId = 'category-id';
      final products = List.generate(
        10,
        (index) {
          return Product(
            id: index,
            title: 'Product $index',
            category: categoryId,
            brand: '',
            description: '',
            thumbnail: '',
            discountPercentage: 0,
            price: 0,
            rating: 0,
            stock: 0,
            images: [],
          );
        },
      );

      when(() {
        return repository.findManyByCategory(
          id: any(named: 'id'),
          skip: any(named: 'skip'),
          limit: any(named: 'limit'),
        );
      }).thenAnswer((_) async {
        return products;
      });

      // Act
      final result = await repository.findManyByCategory(
        id: categoryId,
        skip: 0,
        limit: 10,
      );

      // Assert
      expect(result, equals(products));
    });

    test('findUnique returns a single product', () async {
      // Arrange
      const productId = 1;
      const product = Product(
        id: productId,
        title: 'Product 1',
        brand: '',
        category: '',
        description: '',
        thumbnail: '',
        discountPercentage: 0,
        price: 0,
        rating: 0,
        stock: 0,
        images: [],
      );

      when(() {
        return repository.findUnique(
          id: productId,
        );
      }).thenAnswer((_) async {
        return product;
      });

      // Act
      final result = await repository.findUnique(
        id: productId,
      );

      // Assert
      expect(result, equals(product));
    });
  });
}
