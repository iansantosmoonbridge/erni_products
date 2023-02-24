import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:products/models/category/category_repository.dart';
import 'package:products/models/product/product.dart';
import 'package:products/models/product/product_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_list_view_model.g.dart';
part 'product_list_view_model.freezed.dart';

@freezed
class ProductListViewState with _$ProductListViewState {
  const factory ProductListViewState({
    required String? selectedCategory,
    required List<String> categories,
    required List<Product> products,
  }) = _ProductListViewState;

  const ProductListViewState._();

  factory ProductListViewState.fromJson(Map<String, dynamic> json) => _$ProductListViewStateFromJson(json);
}

@riverpod
class ProductListViewModel extends _$ProductListViewModel {
  @override
  Future<ProductListViewState> build() {
    return Future.wait([
      ref.read(categoryRepositoryProvider).findMany(),
      ref.read(productRepositoryProvider).findMany(skip: 0, limit: 10),
    ]).then((value) {
      return ProductListViewState(
        selectedCategory: null,
        categories: value[0] as List<String>,
        products: value[1] as List<Product>,
      );
    });
  }

  Future<void> findMany({
    required String? category,
    bool clear = false,
  }) async {
    if (state.isLoading) {
      return;
    }

    state = const AsyncValue<ProductListViewState>.loading().copyWithPrevious(
      AsyncValue.data(
        state.value!.copyWith(
          selectedCategory: category,
        ),
      ),
    );

    state = await AsyncValue.guard<ProductListViewState>(() async {
      final products = await (() {
        if (category == null) {
          return ref.read(productRepositoryProvider).findMany(
                skip: clear ? 0 : state.value!.products.length,
                limit: 10,
              );
        }

        return ref.read(productRepositoryProvider).findManyByCategory(
              id: category,
              skip: clear ? 0 : state.value!.products.length,
              limit: 10,
            );
      })();

      if (clear) {
        return state.value!.copyWith(
          products: [
            ...products,
          ],
        );
      }

      return state.value!.copyWith(
        products: [
          ...state.value!.products,
          ...products,
        ],
      );
    });
  }
}
