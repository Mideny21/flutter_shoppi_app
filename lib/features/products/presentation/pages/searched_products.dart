import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppi/core/common/widgets/widget.dart';
import 'package:shoppi/core/utils/app_logger.dart';
import 'package:shoppi/core/utils/colors.dart';
import 'package:shoppi/features/products/products.dart';

@RoutePage()
class SearchProductScreen extends StatefulWidget {
  const SearchProductScreen({super.key});

  @override
  State<SearchProductScreen> createState() => _SearchProductScreenState();
}

class _SearchProductScreenState extends State<SearchProductScreen> {
  late ScrollController _scrollController;

  void _onScroll() {
    if (_isBottom) {
      context.read<ProductBloc>().add(ProductEvent.loadMoreSearchProducts());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        toolbarHeight: 60,
        automaticallyImplyLeading: false,
        //  backgroundColor: AppColors.buttonColor.withOpacity(0.8),
        title: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: Colors.white,
          ),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  onFieldSubmitted: (input) {
                    context.read<ProductBloc>().add(
                      ProductEvent.searchProducts(),
                    );
                  },

                  onChanged: (input) {
                    context.read<ProductBloc>().add(
                      ProductEvent.updateSearchKeyword(input),
                    );
                  },
                  cursorColor: Palette.Primary,
                  autofocus: true,
                  textInputAction: TextInputAction.search,
                  decoration: InputDecoration(
                    isDense: true,
                    errorBorder: const UnderlineInputBorder(),
                    focusedErrorBorder: const UnderlineInputBorder(),
                    contentPadding: const EdgeInsets.all(11.0),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    labelStyle: const TextStyle(color: Colors.black54),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    prefixIcon: IconButton(
                      iconSize: 26,

                      ///  color: AppColors.buttonColor.withOpacity(0.8),
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    hintStyle: TextStyle(fontSize: 16),
                    hintText: "Search...",
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(16),
                      ),
                    ),
                    isScrollControlled: true,
                    builder: (_) => const FilterSheet(),
                  );
                },
                icon: Icon(Icons.filter_list_rounded),
              ),
            ],
          ),
        ),
      ),
      body: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          log.i(
            'ProductBySearch Current Page ${state.searchResults.currentPage} of ${state.searchResults.totalPages}',
          );

          if (state.searchResults.isLoading &&
              state.searchResults.items.isEmpty) {
            return const Center(child: AppLoadingIndicator());
          } else if (state.searchResults.items.isNotEmpty) {
            return CustomScrollView(
              controller: _scrollController,
              slivers: [
                SliverGrid(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    final product = state.searchResults.items[index];
                    return ProductCard(product: product);
                  }, childCount: state.searchResults.items.length),
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200.0,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 3.0,
                    childAspectRatio:
                        (MediaQuery.of(context).size.width /
                            (MediaQuery.of(context).size.height / 1.75)),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Center(
                      child:
                          state.searchResults.hasReachedMax
                              ? const Text(
                                'No more products to load',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              )
                              : state.searchResults.isLoadingMore
                              ? const CircularProgressIndicator()
                              : const SizedBox(),
                    ),
                  ),
                ),
              ],
            );
          } else if (state.searchResults.items.isEmpty &&
              !state.searchResults.isLoading) {
            return const Center(child: Text("No products found"));
          }

          return Container();
        },
      ),
    );
  }
}

class FilterSheet extends StatefulWidget {
  const FilterSheet({super.key});

  @override
  State<FilterSheet> createState() => _FilterSheetState();
}

class _FilterSheetState extends State<FilterSheet> {
  final TextEditingController _minPriceController = TextEditingController();
  final TextEditingController _maxPriceController = TextEditingController();

  int _selectedCategory = -1;

  @override
  void dispose() {
    _minPriceController.dispose();
    _maxPriceController.dispose();
    super.dispose();
  }

  void _applyFilters() {
    context.read<ProductBloc>().add(
      ProductEvent.updateFilters(
        categoryId: _selectedCategory,
        minPrice: _minPriceController.text,
        maxPrice: _maxPriceController.text,
      ),
    );

    Navigator.pop(context); // Close the bottom sheet

    // You can then use this data however you want
    // print("Filters Applied:");
    // print("Min Price: $minPrice");
    // print("Max Price: $maxPrice");
    print("Category: $_selectedCategory");
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Filter Products",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _minPriceController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: "Min Price",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: TextFormField(
                      controller: _maxPriceController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: "Max Price",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Category",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
              const SizedBox(height: 8),
              BlocBuilder<ProductBloc, ProductState>(
                builder: (context, state) {
                  return Wrap(
                    spacing: 10,
                    children:
                        state.categories.isEmpty
                            ? []
                            : state.categories.map((cat) {
                              final isSelected = _selectedCategory == cat.id;
                              return ChoiceChip(
                                label: Text(cat.name),
                                selected: isSelected,
                                onSelected: (_) {
                                  setState(() {
                                    _selectedCategory = cat.id;
                                  });
                                },
                              );
                            }).toList(),
                  );
                },
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _applyFilters,
                  child: const Text("Apply Filters"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
