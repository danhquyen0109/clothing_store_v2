import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_v2/view/pages/home/home.dart';
import 'package:store_v2/view/widgets/cart_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CartBloc>(
      builder: (context) => CartBloc(),
      child: MaterialApp(
        routes: <String, WidgetBuilder>{
          '/home': (BuildContext context) => HomePage(),
        },
        title: 'Clothing Store',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}
