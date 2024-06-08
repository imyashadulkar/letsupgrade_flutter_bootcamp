import 'package:flutter_bloc/flutter_bloc.dart';

class CounterEvent {}

class Increment extends CounterEvent {}

class CounterState {
  final int count;
  CounterState(this.count);
}

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0)) {
    on<Increment>((event, emit) {
      emit(CounterState(state.count + 1));
    });
  }

  // @override
  // Stream<CounterState> mapEventToState(CounterEvent event) async* {
  //   if (event is Increment) {
  //     yield CounterState(state.count + 1);
  //   }
  // }
}
