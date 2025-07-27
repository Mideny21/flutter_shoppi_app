import 'package:flutter/material.dart';

class HomeSearchBar extends StatefulWidget {
  const HomeSearchBar({super.key});

  @override
  State<HomeSearchBar> createState() => _HomeSearchBarState();
}

class _HomeSearchBarState extends State<HomeSearchBar> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: TextFormField(
          readOnly: true,

          onTap: () async {},
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
