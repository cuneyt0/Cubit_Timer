import 'package:cubit_timer/ticker.dart';
import 'package:cubit_timer/timer/cubit/timer_bloc.dart';
import 'package:cubit_timer/timer/view/timer_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color.fromRGBO(109, 234, 255, 1),
          colorScheme: ColorScheme.light(
            secondary: Color.fromRGBO(72, 74, 126, 1),
          ),
        ),
        home: BlocProvider(
          create: (_) => TimerBloc(
            ticker: Ticker(),
          ),
          child: TimerView(),
        ));
  }
}
