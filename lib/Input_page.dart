import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_container.dart';
import 'reusible_widget.dart';
import 'constants.dart';
import 'result.dart';
import 'bottom_button.dart';
import 'round_button.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 170;
  int weight = 75;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusibleWidget(
                    onPressed: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    color: (selectedGender == Gender.male)
                        ? activeCardColor
                        : inActiveCardColor,
                    child: IconContainer(
                      iconData: FontAwesomeIcons.mars,
                      label: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: ReusibleWidget(
                    onPressed: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    color: (selectedGender == Gender.female)
                        ? activeCardColor
                        : inActiveCardColor,
                    child: IconContainer(
                        iconData: FontAwesomeIcons.venus, label: "FEMALE"),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusibleWidget(
              color: activeCardColor,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HEIGHT",
                      style: labelStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(height.toString(), style: numberStyle),
                        Text("cm", style: labelStyle),
                      ],
                    ),
                    SliderTheme(
                      data: SliderThemeData(
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 18),
                        trackHeight: 1,
                        thumbColor: Color(0xFFEB1555),
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF888993),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        onChanged: (double value) {
                          setState(() {
                            height = value.round();
                          });
                        },
                        min: 120,
                        max: 250,
                      ),
                    )
                  ]),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusibleWidget(
                    color: activeCardColor,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "WIGHT",
                            style: labelStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: numberStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                iconData: Icons.remove,
                              ),
                              SizedBox(width: 10),
                              RoundButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                iconData: Icons.add,
                              )
                            ],
                          )
                        ]),
                  ),
                ),
                Expanded(
                  child: ReusibleWidget(
                    color: activeCardColor,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "AGE",
                            style: labelStyle,
                          ),
                          Text(
                            age.toString(),
                            style: numberStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                iconData: Icons.remove,
                              ),
                              SizedBox(width: 10),
                              RoundButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                iconData: Icons.add,
                              )
                            ],
                          )
                        ]),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            label: "CALCULATE YOUR BMI",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Result();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
