
import 'package:counter_app_bloc/UI/page1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/counter_cubit.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterCubit>(
      create: (BuildContext context) => CounterCubit(),
    ),
      ],
      child: MaterialApp(
        title: 'Counter App with cubit',
        home: page1()
      ),
    );
  }
}