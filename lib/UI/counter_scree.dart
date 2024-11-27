import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter_bloc.dart';
import '../bloc/counter_event.dart';
import '../bloc/counter_state.dart';
// import 'bloc/counter_bloc.dart';
// import 'bloc/counter_event.dart';
// import 'bloc/counter_state.dart';


class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter'),backgroundColor: const Color.fromARGB(255, 206, 162, 214),),
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Text(
              '${state.count}',
              style: TextStyle(fontSize: 50),
            );
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'increment',
            child: Icon(Icons.add),
            onPressed: () {
              context.read<CounterBloc>().add(IncrementEvent());
            },
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            heroTag: 'decrement',
            child: Icon(Icons.remove),
            onPressed: () {
              context.read<CounterBloc>().add(DecrementEvent());
            },
          ),
        ],
      ),
    );
  }
}
