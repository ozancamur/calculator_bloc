import 'package:calculator_bloc/core/constants/color/color_constants.dart';
import 'package:calculator_bloc/feature/home/cubit/calculator_cubit.dart';
import 'package:calculator_bloc/feature/widgets/buttons/advanced_math_button.dart';
import 'package:calculator_bloc/feature/widgets/buttons/basic_math_button.dart';
import 'package:calculator_bloc/feature/widgets/buttons/number_button.dart';
import 'package:calculator_bloc/feature/widgets/texts/math_text.dart';
import 'package:calculator_bloc/feature/widgets/texts/result_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CalculatorCubit(),
      child: BlocBuilder<CalculatorCubit, String>(
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              backgroundColor: ColorConstants.calBackground,
              body: SizedBox(
                height: context.sized.height,
                width: context.sized.width,
                child: Padding(
                  padding: context.padding.low,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: context.sized.width,
                        height: context.sized.dynamicHeight(.3),
                        child: Card(
                          elevation: 7,
                          surfaceTintColor: ColorConstants.calGreen,
                          color: ColorConstants.calGreen,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                          child: Padding(
                            padding: context.padding.medium,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                MathText(
                                    text: context
                                        .read<CalculatorCubit>()
                                        .mathText),
                                ResultText(text: state)
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: context.sized.width,
                        height: context.sized.dynamicHeight(.5),
                        child: buttonsField(context),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buttonsField(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AdvancedMathButton(
                onPressed: () => context.read<CalculatorCubit>().clear(),
                text: "C"),
            AdvancedMathButton(
                onPressed: () => context.read<CalculatorCubit>().changeMode(),
                text: "+/-"),
            AdvancedMathButton(
                onPressed: () => context.read<CalculatorCubit>().mod(),
                text: "%"),
            BasicMathButton(
                onPressed: () => context.read<CalculatorCubit>().divide(),
                text: "/"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NumberButton(
                onPressed: () => context.read<CalculatorCubit>().number('7'),
                text: "7"),
            NumberButton(
                onPressed: () => context.read<CalculatorCubit>().number('8'),
                text: "8"),
            NumberButton(
                onPressed: () => context.read<CalculatorCubit>().number('9'),
                text: "9"),
            BasicMathButton(
                onPressed: () => context.read<CalculatorCubit>().square(),
                text: "x"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NumberButton(
                onPressed: () => context.read<CalculatorCubit>().number('4'),
                text: "4"),
            NumberButton(
                onPressed: () => context.read<CalculatorCubit>().number('5'),
                text: "5"),
            NumberButton(
                onPressed: () => context.read<CalculatorCubit>().number('6'),
                text: "6"),
            BasicMathButton(
                onPressed: () => context.read<CalculatorCubit>().subtract(),
                text: "-"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NumberButton(
                onPressed: () => context.read<CalculatorCubit>().number('1'),
                text: "1"),
            NumberButton(
                onPressed: () => context.read<CalculatorCubit>().number('2'),
                text: "2"),
            NumberButton(
                onPressed: () => context.read<CalculatorCubit>().number('3'),
                text: "3"),
            BasicMathButton(
                onPressed: () => context.read<CalculatorCubit>().sum(),
                text: "+"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NumberButton(onPressed: () {}, text: ""),
            NumberButton(
                onPressed: () => context.read<CalculatorCubit>().number('0'),
                text: "0"),
            NumberButton(
                onPressed: () => context.read<CalculatorCubit>().toDouble(),
                text: "."),
            BasicMathButton(
                onPressed: () => context.read<CalculatorCubit>().result(),
                text: "="),
          ],
        ),
      ],
    );
  }
}
