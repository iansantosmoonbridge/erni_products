import 'package:cached_network_image/cached_network_image.dart';
import 'package:change_case/change_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:products/features/product_details/product_details_view_model.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({
    required this.id,
    super.key,
  });

  static Route<void> route({
    required int id,
  }) {
    return MaterialPageRoute(
      builder: (context) {
        return ProductDetailsPage(
          id: id,
        );
      },
    );
  }

  final int id;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) {
          final asyncValue = ref.watch(productDetailsViewModelProvider(id: id));
          return asyncValue.map(
            loading: (loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            error: (error) {
              return const Center(
                child: Text('Something went wrong'),
              );
            },
            data: (data) {
              final product = data.value.product;
              return RefreshIndicator(
                onRefresh: () {
                  return ref.refresh(productDetailsViewModelProvider(id: id).future);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: ListView(
                        children: [
                          AspectRatio(
                            aspectRatio: 1.0 / 1.0,
                            child: CachedNetworkImage(
                              imageUrl: data.value.selectedImage,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Divider(),
                          SizedBox(
                            height: 80,
                            child: Material(
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                padding: const EdgeInsets.all(16),
                                itemCount: product.images!.length,
                                itemBuilder: (context, index) {
                                  final image = product.images![index];
                                  return InkWell(
                                    onTap: () {
                                      ref.read(productDetailsViewModelProvider(id: id).notifier).onSelectImage(image: image);
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: image == data.value.selectedImage ? themeData.colorScheme.primary : themeData.colorScheme.outlineVariant,
                                          width: image == data.value.selectedImage ? 2 : 1,
                                        ),
                                      ),
                                      child: AspectRatio(
                                        aspectRatio: 1.0 / 1.0,
                                        child: CachedNetworkImage(
                                          imageUrl: image,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                separatorBuilder: (BuildContext context, int index) {
                                  return const SizedBox(
                                    width: 8,
                                  );
                                },
                              ),
                            ),
                          ),
                          Container(
                            height: 12,
                            color: themeData.colorScheme.outlineVariant,
                          ),
                          Material(
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    'Product / ${product.category!.split('-').join(' ').toTitleCase()} / ${product.brand}',
                                    style: themeData.textTheme.labelSmall,
                                  ),
                                  Text(
                                    product.title,
                                    style: themeData.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    'Product Description',
                                    style: themeData.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  Text('${product.description}'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(),
                    Material(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
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
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(4),
                                          color: themeData.colorScheme.errorContainer,
                                        ),
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
                                    ],
                                  ),
                                  Text(
                                    'Delivery within 2-5 days',
                                    style: themeData.textTheme.labelSmall,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: FilledButton.tonal(
                                onPressed: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text.rich(
                                        TextSpan(
                                          children: [
                                            const TextSpan(
                                              text: '1 ',
                                            ),
                                            TextSpan(
                                              text: product.title,
                                              style: themeData.textTheme.bodyMedium?.copyWith(
                                                color: themeData.colorScheme.primaryContainer,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const TextSpan(
                                              text: ' was added to cart',
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                child: const Text('Add to Cart'),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
