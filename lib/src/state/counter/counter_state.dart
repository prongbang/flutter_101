part of 'counter_bloc.dart';

abstract class CounterState extends Equatable {
  const CounterState();
}

class CounterData extends CounterState {
  final int data;

  CounterData(this.data);

  @override
  List<Object> get props => [data];
}
