import 'package:flutter/material.dart';
import 'package:untitled3/Models/country_model.dart';
import 'package:untitled3/Models/nav_bar_model.dart';
import 'package:untitled3/Models/row_model.dart';

class Countries extends StatelessWidget {
  const Countries({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RowWidget(),
          ),
          Expanded(
            child: ListView(
              children: [
                CountryModel(countryImage: 'Assets/Images/united-states-of-america 1.svg', text: 'United States', status: 'Assets/Images/signal 1.svg',),
                CountryModel(countryImage: 'Assets/Images/france 1.svg', text: 'France', status: 'Assets/Images/signal 14.svg',),
                CountryModel(countryImage: 'Assets/Images/germany(1) 1.svg', text: 'Germany', status: 'Assets/Images/signal 14.svg',),
                CountryModel(countryImage: 'Assets/Images/australia 1.svg', text: 'Australia', status: 'Assets/Images/signal 14.svg',),
                CountryModel(countryImage: 'Assets/Images/Group 11.svg', text: 'India', status: 'Assets/Images/signal 14.svg',),
                CountryModel(countryImage: 'Assets/Images/canada 1.svg', text: 'Canada', status: 'Assets/Images/signal 14.svg',),
                CountryModel(countryImage: 'Assets/Images/netherlands 1.svg', text: 'Netherlands', status: 'Assets/Images/signal 14.svg',),
                CountryModel(countryImage: 'Assets/Images/united-kingdom 1.svg', text: 'United Kingdom', status: 'Assets/Images/signal 14.svg',),
                CountryModel(countryImage: 'Assets/Images/japan 1.svg', text: 'Japan', status: 'Assets/Images/signal 14.svg',),
                CountryModel(countryImage: 'Assets/Images/china 1.svg', text: 'China', status: 'Assets/Images/signal 14.svg',),
              ],
            ),
          ),
          NavBarModel(),
          SizedBox(height: 30,),
        ],
      ),
    );
  }
}
