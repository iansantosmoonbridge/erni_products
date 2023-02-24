import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:products/models/category/category_repository.dart';

class MockCategoryRepository extends Mock implements ICategoryRepository {}

void main() {
  late ICategoryRepository repository;

  setUp(() {
    repository = MockCategoryRepository();
  });

  group('CategoryRepository', () {
    test('findMany returns a list of category names', () async {
      // Arrange
      final categoryNames = ['Category 1', 'Category 2', 'Category 3'];

      when(() {
        return repository.findMany();
      }).thenAnswer((_) async {
        return categoryNames;
      });

      // Act
      final result = await repository.findMany();

      // Assert
      expect(result, equals(categoryNames));
    });
  });
}
