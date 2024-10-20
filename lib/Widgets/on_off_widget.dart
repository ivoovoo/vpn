import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled3/Models/connection_button.dart';
import 'package:untitled3/Models/country_model.dart';
import 'package:untitled3/Models/nav_bar_model.dart';
import 'package:untitled3/Models/row_model.dart';
import 'package:untitled3/Theme/theme.dart';
import 'package:untitled3/Widgets/countries.dart';

class OnOffWidget extends StatefulWidget {
  // final String? selectedOption;

  const OnOffWidget({
    super.key,
  });

  @override
  State<OnOffWidget> createState() => _OnOffWidgetState();
}

class _OnOffWidgetState extends State<OnOffWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('Assets/Images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              RowWidget(),
              SizedBox(
                height: 120,
              ),
              CircularButton(),
              SizedBox(
                height: 6,
              ),
              NavBarModel(),
            ],
          ),
        ),
      ),
    );
  }
}
