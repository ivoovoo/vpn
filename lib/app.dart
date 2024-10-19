import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled3/BLoC/bloc.dart';
import 'package:untitled3/UI/project.dart';
import 'package:untitled3/Widgets/countries.dart';
import 'package:untitled3/Widgets/on_off_widget.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
          create: (context) => NavigationBloc(),
          child: Project()
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
