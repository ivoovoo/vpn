import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled3/BLoC/bloc.dart';
import 'package:untitled3/BLoC/bloc_events.dart';

class NavBarModel extends StatelessWidget {
  const NavBarModel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('Assets/Images/navbg.png'),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: SvgPicture.asset('Assets/Images/home.svg'),
                onTap: () {
                  context.read<NavigationBloc>().add(GoToScreenA());
                },
              ),
              SizedBox(
                width: 70,
              ),
              InkWell(
                child: SvgPicture.asset('Assets/Images/Subtract.svg'),
                onTap: () {
                  context.read<NavigationBloc>().add(GoToScreenB());
                },
              ),
              SizedBox(
                width: 70,
              ),
              InkWell(
                child: SvgPicture.asset('Assets/Images/Union.svg'),
                onTap: () {
                  context.read<NavigationBloc>().add(GoToScreenC());
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
