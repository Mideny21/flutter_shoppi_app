import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shoppi/core/router/app_router.gr.dart';

class HomeSearchBar extends StatefulWidget {
  const HomeSearchBar({super.key});

  @override
  State<HomeSearchBar> createState() => _HomeSearchBarState();
}

class _HomeSearchBarState extends State<HomeSearchBar> {
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    // TODO: implement dispose
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: TextFormField(
          readOnly: true,
          focusNode: _focusNode,

          onTap: () async {
            // unfocus before navigating to avoid keeping focus when returning
            _focusNode.unfocus();
            context.router.push(const SearchProductsRoute());
            _focusNode.unfocus();
          },
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            labelText: "Search",
            labelStyle: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w500,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.grey),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            suffixIcon: Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}
