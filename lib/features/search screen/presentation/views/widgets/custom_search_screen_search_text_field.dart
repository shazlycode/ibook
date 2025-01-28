import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibook/features/search%20screen/presentation/view%20model/search_cubit/search_cubit.dart';

class CustomSearchScreenSearchTextField extends StatefulWidget {
  const CustomSearchScreenSearchTextField({super.key});

  @override
  State<CustomSearchScreenSearchTextField> createState() =>
      _CustomSearchScreenSearchTextFieldState();
}

class _CustomSearchScreenSearchTextFieldState
    extends State<CustomSearchScreenSearchTextField> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        return SliverToBoxAdapter(
          child: TextFormField(
            onChanged: (v) {
              print("TextField value changed to: $v");
              var searchCubit = context.read<SearchCubit>();
              context.read<SearchCubit>().updateSearchText(v);
              print("SearchCubit available: $searchCubit");
              print(v);
            },
            decoration: InputDecoration(
                label: Text("Search Books"),
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
          ),
        );
      },
    );
  }
}
