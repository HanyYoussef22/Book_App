import 'package:book_app/Features/search/presentation/view/widgets/searchBarBody.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SearchBarBody()
      ),
    );
  }
}
