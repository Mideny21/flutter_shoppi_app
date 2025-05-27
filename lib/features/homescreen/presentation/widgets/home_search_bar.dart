import 'package:flutter/material.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey.withOpacity(0.2),
          labelText: "Search",
          labelStyle:
              TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          suffixIcon: Icon(Icons.search),
        ),
      ),
    ));
  }
}
