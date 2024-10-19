import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled3/Models/nav_bar_model.dart';
import 'package:untitled3/Models/row_model.dart';
import 'package:untitled3/Theme/theme.dart';

class OnOffWidget extends StatefulWidget {
  const OnOffWidget({super.key});

  @override
  State<OnOffWidget> createState() => _OnOffWidgetState();
}

class _OnOffWidgetState extends State<OnOffWidget> {
  bool isNotPressed = true;

  void _toggleSvg() {
    setState(() {
      isNotPressed = !isNotPressed; // Меняем состояние
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('Assets/Images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              RowWidget(),
              SizedBox(
                height: 120,
              ),
              Text(
                '00:00:00',
                style: Style.txtStyle.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SvgPicture.asset('Assets/Images/canada.svg'),
              SizedBox(
                height: 20,
              ),
              Text(
                'Connect!',
                style: Style.txtStyle.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: _toggleSvg,
                child: isNotPressed
                    ? Column(
                      children: [
                        SvgPicture.asset('Assets/Images/offbut.svg'),
                        SizedBox(height: 20,),
                      ],
                    )
                    : Column(
                      children: [
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            SizedBox(width: 73,),
                            SvgPicture.asset('Assets/Images/onbut.svg'),
                          ],
                        ),
                      ],
                    ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset('Assets/Images/стрелка_вниз.svg'),
                        SizedBox(
                          width: 17,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  '59.8',
                                  style: Style.txtStyle.copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  ' кв/s',
                                  style: Style.txtStyle.copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Download',
                              style: Style.txtStyle.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    SvgPicture.asset('Assets/Images/Line 1.svg'),
                    SizedBox(
                      width: 40,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset('Assets/Images/Group.svg'),
                        SizedBox(
                          width: 17,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  '19.8',
                                  style: Style.txtStyle.copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  ' мв/s',
                                  style: Style.txtStyle.copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Upload',
                              style: Style.txtStyle.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              NavBarModel(),
            ],
          ),
        ),
      ),
    );
  }
}

