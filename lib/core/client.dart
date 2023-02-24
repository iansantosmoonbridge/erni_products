import 'package:dio/dio.dart';
import 'package:products/models/product/product.dart';
import 'package:products/models/product/product_list_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'client.g.dart';

@riverpod
Dio dio(DioRef ref) {
  return Dio();
}

@riverpod
Client client(ClientRef ref) {
  final dio = ref.read(dioProvider);

  return Client(dio);
}

@RestApi(baseUrl: 'https://dummyjson.com')
abstract class Client {
  factory Client(Dio dio, {String baseUrl}) = _Client;

  @GET('/products/categories')
  Future<List<String>> findManyCategories();

  @GET('/products')
  Future<ProductListResponse> findManyProducts({
    @Query('limit') required int limit,
    @Query('skip') required int skip,
    @Query('select') required String select,
  });

  @GET('/products/category/{id}')
  Future<ProductListResponse> findManyProductsByCategory({
    @Path() required String id,
    @Query('limit') required int limit,
    @Query('skip') required int skip,
    @Query('select') required String select,
  });

  @GET('/products/{id}')
  Future<Product> findUniqueProduct({
    @Path() required int id,
  });
}
