import 'package:flutter/material.dart';

import 'shimmer_custom_book_image.dart';
import 'skelton.dart';

class ShimmerBookListViewItem extends StatelessWidget {
  const ShimmerBookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Row(
        children: <Widget>[
          const ShimmerCustomBookImage(),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Skelton(
                  height: 15,
                  width: MediaQuery.of(context).size.width * 0.5,
                ),
                const SizedBox(height: 10),
                Skelton(
                  height: 15,
                  width: MediaQuery.of(context).size.width * 0.35,
                ),
                const SizedBox(height: 10),
                Skelton(
                  height: 6,
                  width: MediaQuery.of(context).size.width * 0.2,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    Skelton(
                      height: 10,
                      width: 50,
                    ),
                    Skelton(
                      height: 10,
                      width: 80,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
