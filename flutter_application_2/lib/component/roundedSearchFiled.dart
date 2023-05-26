

import 'package:flutter/material.dart';

class RoundedSearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.grey[200],
      ),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Search',
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey[600],
            ),
          ),
        ),
      ),
    );
  }
}
