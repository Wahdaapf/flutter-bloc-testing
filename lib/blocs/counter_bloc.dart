import 'package:bloc/bloc.dart';

// Event
abstract class CounterEvent {}
class IncrementEvent extends CounterEvent {}
class DecrementEvent extends CounterEvent {}

// State
class CounterState {
  final int counter;
  CounterState(this.counter);
}

// BLoC
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0)) {
    on<IncrementEvent>((event, emit) => emit(CounterState(state.counter + 1)));
    on<DecrementEvent>((event, emit) => emit(CounterState(state.counter - 1)));
  }
}
