import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterData(0));

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    // Get current state
    var currentState = (state as CounterData).data;
    if (event is CounterIncrease) {
      yield CounterData(++currentState);
    }
    if (event is CounterDecrease) {
      yield CounterData(--currentState);
    }
  }
}
