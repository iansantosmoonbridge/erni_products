import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:products/models/product/product.dart';

part 'product_list_response.freezed.dart';
part 'product_list_response.g.dart';

@freezed
class ProductListResponse with _$ProductListResponse {
  const factory ProductListResponse({
    required List<Product> products,
    required int total,
    required int skip,
    required int limit,
  }) = _ProductListResponse;

  const ProductListResponse._();

  factory ProductListResponse.fromJson(Map<String, dynamic> json) => _$ProductListResponseFromJson(json);
}
