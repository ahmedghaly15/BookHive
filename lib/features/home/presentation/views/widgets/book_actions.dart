import 'package:book_hive/constants.dart';
import 'package:book_hive/features/web_view/presentation/views/web_view_screen.dart';
import 'package:flutter/material.dart';

import 'package:book_hive/features/home/data/models/book_model/book_model.dart';

import '../../../../../core/widgets/custom_button.dart';

class BookActions extends StatelessWidget {
  final BookModel book;
  const BookActions({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: <Widget>[
          Expanded(
            child: CustomButton(
              onPressed: () {},
              backgroundColor: Colors.white,
              text: "Free",
              textColor: Colors.black,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () {
                navigateTo(
                    context, WebViewScreen(url: book.volumeInfo.previewLink!));
                // launchCustomUrl(context, book.volumeInfo.previewLink!);

                // Uri url = Uri.parse(book.volumeInfo.previewLink!);
                // if (await canLaunchUrl(url)) {
                //   await launchUrl(url);
                // } else {}
              },
              backgroundColor: const Color(0xffEF8262),
              text: getText(book),
              fontSize: 16,
              textColor: Colors.white,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String getText(BookModel book) {
    if (book.volumeInfo.previewLink == null) {
      return "Not Available";
    }
    return "Preview";
  }
}
