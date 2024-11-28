import 'package:counter_app_bloc/UI/page1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/counter_cubit.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 2'),),
      body:      Column(
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
        FloatingActionButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>page1()));
        },child: const Icon(Icons.navigate_before),)
        
      ],),
  
    );
  }
}