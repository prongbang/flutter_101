import 'package:flutter/material.dart';
import 'package:flutter_101/src/state/counter/counter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocPage extends StatefulWidget {
  @override
  _BlocPageState createState() => _BlocPageState();
}

class _BlocPageState extends State<BlocPage> {
  @override
  Widget build(BuildContext context) {
    print('Render');
    return Scaffold(
      appBar: AppBar(title: Text('BloC')),
      body: BlocProvider(
        create: (context) => CounterBloc(),
        child: BlocWidget(),
      ),
    );
  }
}

class BlocWidget extends StatelessWidget {
  const BlocWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                final counter = state is CounterData ? state.data : 0;
                return Text('$counter');
              },
            ),
            TextButton(
              child: Text('+Increase'),
              onPressed: () {
                context.read<CounterBloc>().add(CounterIncrease());
              },
            ),
            SizedBox(width: 16),
            TextButton(
              child: Text('-Decrease'),
              onPressed: () {
                context.read<CounterBloc>().add(CounterDecrease());
              },
            ),
          ],
        ),
      ),
    );
  }
}
