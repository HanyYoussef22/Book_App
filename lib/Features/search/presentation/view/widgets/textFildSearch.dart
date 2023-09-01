import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../shard/styles/clors.dart';
import '../../../../home/presentation/view_model/CubitFeaturedBooks/featured_books_cubit.dart';

class TextFieldSearchBar extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const TextFieldSearchBar({super.key, required this.onChanged});
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
          fillColor: SecendColor,
          filled: true,
          enabledBorder: const OutlineInputBorder(),
          focusedBorder: const OutlineInputBorder(),
          hintText: 'Search',
          suffixIcon: Opacity(
              opacity: 0.7,
              child: IconButton(
                onPressed: () {
                  BlocProvider.of<FeaturedBooksCubit>(context).getFeatureBooks(category: 'Computer science');
                },
                icon: const Icon(FontAwesomeIcons.magnifyingGlass),
              ))),
    );
  }
}