import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:products/models/product/product.dart';
import 'package:products/models/product/product_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_details_view_model.g.dart';
part 'product_details_view_model.freezed.dart';

@freezed
class ProductDetailsViewState with _$ProductDetailsViewState {
  const factory ProductDetailsViewState({
    required String selectedImage,
    required Product product,
  }) = _ProductDetailsViewState;

  const ProductDetailsViewState._();

  factory ProductDetailsViewState.fromJson(Map<String, dynamic> json) => _$ProductDetailsViewStateFromJson(json);
}

@riverpod
class ProductDetailsViewModel extends _$ProductDetailsViewModel {
  @override
  Future<ProductDetailsViewState> build({required int id}) {
    return ref.read(productRepositoryProvider).findUnique(id: id).then((value) {
      return ProductDetailsViewState(
        selectedImage: value.thumbnail,
        product: value,
      );
    });
  }

  void onSelectImage({
    required String image,
  }) {
    state = AsyncValue.data(
      state.value!.copyWith(
        selectedImage: image,
      ),
    );
  }
}
