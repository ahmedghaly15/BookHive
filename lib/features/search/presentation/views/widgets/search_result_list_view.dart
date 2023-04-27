import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home/presentation/views/widgets/book_list_view_item.dart';
import '/core/widgets/custom_loading_indicator.dart';
import '/features/search/presentation/manager/search_cubit.dart';
import '/features/search/presentation/manager/search_states.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchStates>(
      builder: (context, state) {
        if (state is SearchSuccessState) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            // Download all items at the same time
            shrinkWrap: true,
            itemCount: state.search.length,
            itemBuilder: (context, index) {
              return BookListViewItem(
                book: state.search[index],
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 10);
            },
          );
        } else if (state is SearchLoadingState) {
          return const CustomLoadingIndicator();
        } else {
          return Container();
        }
      },
    );
  }
}
