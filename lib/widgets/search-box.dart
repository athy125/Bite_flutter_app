import 'package:flutter/material.dart';
import '../paltte.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        hintStyle: kTextLightGrey.copyWith(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        prefixIcon: Icon(
          Icons.search,
          color: kLightGrey,
        ),
        suffixIcon: Icon(
          Icons.tune_rounded,
          color: kLightGrey,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(22),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: Colors.grey[200],
      ),
    );
  }
}
