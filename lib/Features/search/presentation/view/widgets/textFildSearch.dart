import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../shard/styles/clors.dart';

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
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.magnifyingGlass),
              ))),
    );
  }
}