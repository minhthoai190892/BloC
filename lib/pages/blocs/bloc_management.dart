import 'package:bloc_tutorial/models/counter_bloc_management.dart';
import 'package:flutter/material.dart';

class BlocManagement extends StatefulWidget {
  const BlocManagement({Key? key}) : super(key: key);
  static const nameRoute = '/BlocManagement';

  @override
  State<BlocManagement> createState() => _BlocManagementState();
}

class _BlocManagementState extends State<BlocManagement> {
  CounterBloc bloc = CounterBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc Management"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder(
            initialData: bloc.counter,
            stream: bloc.output,
            builder: (context, snapshot) => Text(
              "data :${snapshot.data}",
              style: TextStyle(fontSize: 50),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  bloc.inputan.add('minus');
                },
                child: const Icon(Icons.remove),
              ),
              ElevatedButton(
                onPressed: () {
                  bloc.inputan.add('add');
                },
                child: const Icon(Icons.add),
              ),
            ],
          )
        ],
      ),
    );
  }
}
