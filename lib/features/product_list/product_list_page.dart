import 'package:change_case/change_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:products/features/product_list/product_list_view_model.dart';
import 'package:products/features/product_list/widgets/product_tile.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_list_page.g.dart';

@riverpod
class SelectedIndex extends _$SelectedIndex {
  @override
  int build() {
    return 0;
  }
}

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (context) {
        return const ProductListPage();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ERNI Products'),
      ),
      body: Consumer(
        builder: (context, ref, child) {
          final asyncValue = ref.watch(productListViewModelProvider);
          return asyncValue.map(
            loading: (loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            error: (error) {
              return Center(
                child: Text(error.error.toString()),
              );
            },
            data: (data) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 64,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(8),
                      itemCount: data.value.categories.length,
                      itemBuilder: (context, index) {
                        final category = data.value.categories[index];
                        return FilterChip(
                          label: Text(category.split('-').join(' ').toTitleCase()),
                          selected: category == data.value.selectedCategory,
                          onSelected: (bool value) {
                            ref.read(productListViewModelProvider.notifier).findMany(category: value ? category : null, clear: true);
                          },
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: 8,
                        );
                      },
                    ),
                  ),
                  if (data.isLoading) ...[
                    const LinearProgressIndicator(
                      minHeight: 2,
                    ),
                  ] else ...[
                    const Divider(),
                  ],
                  Expanded(
                    child: data.value.products.isEmpty
                        ? const Center(
                            child: Text('No products'),
                          )
                        : RefreshIndicator(
                            onRefresh: () {
                              return ref.refresh(productListViewModelProvider.future);
                            },
                            child: NotificationListener<ScrollNotification>(
                              onNotification: (ScrollNotification scrollInfo) {
                                if (scrollInfo is ScrollEndNotification) {
                                  if (scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent) {
                                    ref.read(productListViewModelProvider.notifier).findMany(category: data.value.selectedCategory);
                                  }
                                }

                                return true;
                              },
                              child: AnimationLimiter(
                                child: GridView.builder(
                                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                    childAspectRatio: 1 / 1.61803398875,
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 8,
                                    mainAxisSpacing: 8,
                                  ),
                                  padding: const EdgeInsets.all(8),
                                  itemCount: data.value.products.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    final product = data.value.products[index];
                                    return AnimationConfiguration.staggeredGrid(
                                      position: index,
                                      columnCount: 2,
                                      delay: const Duration(milliseconds: 256),
                                      child: SlideAnimation(
                                        verticalOffset: 50,
                                        child: FadeInAnimation(
                                          child: ProviderScope(
                                            overrides: [
                                              productListTileArgsProvider.overrideWithValue(
                                                ProductListTileArgs(
                                                  product: product,
                                                ),
                                              ),
                                            ],
                                            child: const ProductGridTile(),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                  ),
                ],
              );
            },
          );
        },
      ),
      bottomNavigationBar: Consumer(
        builder: (context, ref, child) {
          final selectedIndex = ref.watch(selectedIndexProvider);
          return NavigationBar(
            selectedIndex: selectedIndex,
            onDestinationSelected: (value) {
              ref.read(selectedIndexProvider.notifier).state = value;
            },
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              NavigationDestination(
                icon: Icon(Icons.search_outlined),
                label: 'Search',
              ),
              NavigationDestination(
                icon: Icon(Icons.shopping_cart_outlined),
                label: 'Cart',
              ),
              NavigationDestination(
                icon: Icon(Icons.account_circle_outlined),
                label: 'Me',
              ),
            ],
          );
        },
      ),
    );
  }
}


// ListView.builder(
//                     itemCount: data.value.length,
//                     itemBuilder: (context, index) {
//                       final product = data.value[index];
//                       return ProviderScope(
//                         overrides: [
//                           productListTileArgsProvider.overrideWithValue(
//                             ProductListTileArgs(
//                               product: product,
//                             ),
//                           ),
//                         ],
//                         child: const ProductListTile(),
//                       );
//                     },
//                   ),
