import 'package:client_app/src/counter/counter_bloc.dart';
import 'package:client_app/src/generated/counter.pbgrpc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          Provider.of<Count>(context).count.toString(),
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: () => Provider.of<CounterBloc>(context)
            .incrementContBy(Count()..count = 5),
      ),
    );
  }
}
