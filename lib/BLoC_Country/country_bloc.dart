import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled3/BLoC_Country/country_event.dart';
import 'package:untitled3/BLoC_Country/country_state.dart';

class CountryBloc extends Bloc<CountryEvent, CountryState> {
  CountryBloc() : super(CountryState(countryId: 4)) {
    on<SetCountry>((event, emit) {
      emit(CountryState(countryId: event.countryId));
    });
  }
}