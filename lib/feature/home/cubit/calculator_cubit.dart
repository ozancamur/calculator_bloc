import 'package:bloc/bloc.dart';

part 'calculator_state.dart';

class CalculatorCubit extends Cubit<String> {
  CalculatorCubit() : super('0.0');

  String mathText = '';
  double currentNumber = 0.0;
  bool resultCheck = false;

  // * BASIC MATH
  void result() {
    if (mathText.length < 2) return;
    resultCheck = true;
    mathText = mathText.substring(0, mathText.length - 2);
    emit("= $currentNumber");
  }

  void square() {
    if (state == '') return;
    if (state.length > 1) {
      if (state.substring(state.length - 2) == 'x ') return;
    }
    if (currentNumber == 0.0) currentNumber = 1.0;
    currentNumber *= double.parse(state);
    mathText += '${double.parse(state)} * ';
    emit("$currentNumber");
  }

  void divide() {
    if (state == '') return;
    if (state.length > 1) {
      if (state.substring(state.length - 2) == '/ ') return;
    }
    currentNumber /= double.parse(state);
    mathText += '${double.parse(state)} / ';
    emit("$currentNumber");
  }

  void sum() {
    if (state == '') return;
    if (state.length > 1) {
      if (state.substring(state.length - 2) == '+ ') return;
    }
    currentNumber += double.parse(state);
    mathText += '${double.parse(state)} + ';
    emit("$currentNumber");
  }

  void subtract() {
    if (state == '') return;
    if (state.length > 1) {
      if (state.substring(state.length - 2) == '- ') return;
    }
    currentNumber -= double.parse(state);
    mathText += '${double.parse(state)} - ';
    emit("$currentNumber");
  }

  void toDouble() {
    if (state.substring(state.length - 1) == '.') return;
    if (double.parse(state) == currentNumber) emit("0");
    if (state == "0.0") emit("0");
    emit("$state.");
  }

  // * ADVANCED MATH
  void clear() {
    currentNumber = 0.0;
    mathText = '';
    emit("0.0");
  }

  void mod() {
    if (state == '') return;
    if (state.length > 1) {
      if (state.substring(state.length - 2) == '% ') return;
    }
    currentNumber %= double.parse(state);
    mathText += '${double.parse(state)} % ';
    emit("$currentNumber");
  }

  void changeMode() {
    if (double.parse(state).isNegative) {
      emit(state.substring(1));
    } else {
      emit("-$state");
    }
  }

  // * NUMBERS
  void number(String number) {
    if (resultCheck == true) {
      resultCheck = false;
      mathText = '';
      currentNumber = 0.0;
      emit(number);
    } else if (resultCheck == false) {
      if (state == "0.0" || double.parse(state) == currentNumber) {
        if (state == "0.") {
          emit("$state$number");
        } else {
          emit(number);
        }
      } else {
        emit("$state$number");
      }
    }
  }
}
