import 'package:flutter_bloc/flutter_bloc.dart';

enum CounterEvent { Initial, Increase, Decrease }

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0);

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    if (event == CounterEvent.Increase)
      yield state + 1;
    else if (event == CounterEvent.Decrease)
      yield state - 1;
    else
      yield state;
  }
}
