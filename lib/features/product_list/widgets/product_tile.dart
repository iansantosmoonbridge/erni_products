import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:products/features/product_details/product_details_page.dart';
import 'package:products/models/product/product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_tile.freezed.dart';
part 'product_tile.g.dart';

@riverpod
ProductListTileArgs productListTileArgs(ProductListTileArgsRef ref) {
  throw UnimplementedError();
}

@freezed
class ProductListTileArgs with _$ProductListTileArgs {
  const factory ProductListTileArgs({
    required Product product,
  }) = _ProductListTileArgs;

  const ProductListTileArgs._();

  factory ProductListTileArgs.fromJson(Map<String, dynamic> json) => _$ProductListTileArgsFromJson(json);
}

class ProductListTile extends ConsumerWidget {
  const ProductListTile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final args = ref.watch(productListTileArgsProvider);
    return ListTile(
      leading: CircleAvatar(
        foregroundImage: NetworkImage(args.product.thumbnail),
      ),
      title: Text(args.product.title),
      onTap: () {
        Navigator.of(context).push(ProductDetailsPage.route(id: args.product.id));
      },
    );
  }
}

class ProductGridTile extends ConsumerWidget {
  const ProductGridTile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeData = Theme.of(context);
    final args = ref.watch(productListTileArgsProvider);
    final product = args.product;
    return Material(
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(ProductDetailsPage.route(id: product.id));
        },
        borderRadius: BorderRadius.circular(8),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: themeData.colorScheme.outlineVariant,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AspectRatio(
                aspectRatio: 1.0 / 1.0,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: CachedNetworkImage(
                        imageUrl: product.thumbnail,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional.bottomEnd,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: themeData.colorScheme.errorContainer,
                        ),
                        margin: const EdgeInsets.all(8),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        child: Text(
                          '${product.discountPercentage}% OFF',
                          style: themeData.textTheme.labelSmall?.copyWith(
                            color: themeData.colorScheme.onErrorContainer,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                product.brand,
                style: themeData.textTheme.labelSmall,
              ),
              Text(
                product.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: themeData.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Row(
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        const TextSpan(
                          text: r'$',
                        ),
                        TextSpan(
                          text: '${product.price}',
                          style: themeData.textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: themeData.colorScheme.error,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '${product.stock} stocks left',
                    style: themeData.textTheme.labelSmall,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
