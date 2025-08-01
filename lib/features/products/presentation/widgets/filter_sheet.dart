import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppi/core/common/widgets/widget.dart';
import 'package:shoppi/core/utils/utils.dart';
import 'package:shoppi/features/products/products.dart';

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
  void initState() {
    super.initState();

    final state = context.read<ProductBloc>().state;

    // Pre-fill with existing values from state
    if (state.minPrice != null) {
      _minPriceController.text = state.minPrice!;
    }
    if (state.maxPrice != null) {
      _maxPriceController.text = state.maxPrice!;
    }
    if (state.selectedCategoryId != null) {
      _selectedCategory = state.selectedCategoryId!;
    }
  }

  @override
  void dispose() {
    _minPriceController.dispose();
    _maxPriceController.dispose();
    super.dispose();
  }

  void _applyFilters() {
    context.read<ProductBloc>().add(
      ProductEvent.updateFilters(
        categoryId: _selectedCategory != -1 ? _selectedCategory : null,
        minPrice:
            _minPriceController.text != ''
                ? _minPriceController.text.replaceAll(',', '')
                : null,
        maxPrice:
            _maxPriceController.text != ''
                ? _maxPriceController.text.replaceAll(',', '')
                : null,
      ),
    );

    Navigator.pop(context);
  }

  void _resetFilters() {
    setState(() {
      _selectedCategory = -1;
      _minPriceController.clear();
      _maxPriceController.clear();
    });

    context.read<ProductBloc>().add(ProductEvent.resetSearchState());

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Filter Products",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),

                  /// Min & Max Price
                  Row(
                    children: [
                      Expanded(
                        child: InputFields(
                          controller: _minPriceController,
                          inputFormatters: [NumericTextFormatter()],
                          hintText: '',
                          title: 'Min Price',
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: InputFields(
                          controller: _maxPriceController,
                          inputFormatters: [NumericTextFormatter()],

                          hintText: '',
                          title: 'Max Price',
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  /// Category
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Category",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 4,
                    children:
                        state.categories.map((cat) {
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
                  ),

                  const SizedBox(height: 24),

                  /// Buttons
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: _resetFilters,
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Text("Reset"),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: CustomNeumorphicButton(
                          onTap: _applyFilters,
                          text: ' Apply Filters',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
