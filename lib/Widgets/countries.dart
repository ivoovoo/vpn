import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled3/BLoC_Country/country_bloc.dart';
import 'package:untitled3/BLoC_Country/country_event.dart';
import 'package:untitled3/BLoC_Country/country_state.dart';
import 'package:untitled3/Models/country_model.dart';
import 'package:untitled3/Models/model_model.dart';
import 'package:untitled3/Models/nav_bar_model.dart';
import 'package:untitled3/Models/row_model.dart';

class Countries extends StatefulWidget {
  const Countries({
    super.key,
  });

  @override
  State<Countries> createState() => _CountriesState();
}

class _CountriesState extends State<Countries> {
  int? _selectedOption;

  @override
  void initState() {
    _selectedOption = context.read<CountryBloc>().state.countryId;
  }

  void _updateSelectedOption(int? value) {
    setState(() {
      _selectedOption = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CountryBloc, CountryState>(
      builder: (context, state) {
        if (state.countryId != _selectedOption) {
          context
              .read<CountryBloc>()
              .add(SetCountry(countryId: _selectedOption!));
        }
        return Scaffold(
          body: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: RowWidget(),
              ),
              Expanded(
                child: ListView(
                  children: [
                    for (int i = 0; i < listOfCountries.length; i++)
                      RadioListTile(
                        title: CountryModel(
                          countryImage: listOfCountries[i].flag,
                          text: listOfCountries[i].name,
                          status: 'Assets/Images/signal 1.svg',
                        ),
                        value: i,
                        groupValue: _selectedOption,
                        onChanged: _updateSelectedOption,
                      ),
                  ],
                ),
              ),
              const NavBarModel(),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        );
      },
    );
  }
}
