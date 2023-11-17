import 'package:flutter/material.dart';
import 'package:spotify_clone/module/main/services/list_library.dart';
import '../module/main/model/library_horizontal_model.dart';

class LibraryHorizontalListView extends StatelessWidget {
  final List<LibraryColumn> categories = LibraryColumnRepository.categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(4),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[800],
                  ),
                  child: Text(
                    categories[index].title,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

