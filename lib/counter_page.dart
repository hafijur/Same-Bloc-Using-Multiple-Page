import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:same_bloc_multiple_page/counter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      cubit: BlocProvider.of<CounterBloc>(context),
      builder: (BuildContext context, int counter) => Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$counter',
                style: Theme.of(context).textTheme.headline4,
              ),
              RaisedButton(
                  onPressed: () => BlocProvider.of<CounterBloc>(context)
                      .add(CounterEvent.Decrease),
                  child: Text("Decrease"))
            ],
          ),
        ),
      ),
    );
  }
}
