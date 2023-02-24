import 'package:products/core/client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_repository.g.dart';

@riverpod
ICategoryRepository categoryRepository(CategoryRepositoryRef ref) {
  return CategoryRepository(ref);
}

abstract class ICategoryRepository {
  Future<List<String>> findMany();
}

class CategoryRepository implements ICategoryRepository {
  CategoryRepository(this.ref);

  final CategoryRepositoryRef ref;

  @override
  Future<List<String>> findMany() {
    return ref.read(clientProvider).findManyCategories();
  }
}
