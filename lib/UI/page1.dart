import 'dart:ffi';

import 'package:counter_app_bloc/UI/page2.dart';
import 'package:counter_app_bloc/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class page1 extends StatelessWidget {
  const page1({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PAGE 1"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Center(child: BlocBuilder<CounterCubit,int>(
          builder: (context, state) {
            return Text('$state');
          },
        )),
        ElevatedButton(onPressed: (){

          BlocProvider.of<CounterCubit>(context).increase();
        }, child: Text('Increase')),
                SizedBox(height: 20,),

        ElevatedButton(onPressed: (){
          BlocProvider.of<CounterCubit>(context).decrease();
        }, child: Text('Decrease')),
        const SizedBox(height: 30,),
        FloatingActionButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2()));
        },child: const Icon(Icons.navigate_next),)
        
      ],),
    );
  }
}