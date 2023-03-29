import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterData(0)) {
    on<CounterDecreaseEvent>((event, emit) {
      // Get current state
      var currentState = (state as CounterData).data;

      // Update state
      emit(CounterData(--currentState));
    });

    on<CounterIncreaseEvent>((event, emit) {
      // Get current state
      var currentState = (state as CounterData).data;

      // Update state
      emit(CounterData(++currentState));
    });
  }
}
