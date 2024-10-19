
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled3/BLoC/bloc.dart';
import 'package:untitled3/BLoC/bloc_state.dart';
import 'package:untitled3/Widgets/countries.dart';
import 'package:untitled3/Widgets/on_off_widget.dart';
import 'package:untitled3/Widgets/subscription.dart';

class Project extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
        if (state is NavigateToScreenA) {
          return const OnOffWidget();
        } else if (state is NavigateToScreenB) {
          return const Countries();
        } else if (state is NavigateToScreenC) {
          return const Subscription();
        }
        return const Center(
          child: Text('error'),
        );
      },
    );
  }
}