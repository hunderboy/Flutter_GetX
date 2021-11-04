import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx_example/src/controller/count_controller_with_provider.dart';
import 'package:provider/provider.dart';

class WithProvider extends StatelessWidget {
  const WithProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Provider", style: TextStyle(fontSize: 30),),
          Consumer<CountCotrollerWithProvider>(
              builder: (_, snapshot, child) {
                return Text("${snapshot.count}", style: TextStyle(fontSize: 50),);
              }
          ),
          RaisedButton(
              child: Text("+", style: TextStyle(fontSize: 30),),
              onPressed: () {
                Provider.of<CountCotrollerWithProvider>(context, listen: false).increase();
              }
          )
        ],
      ),
    );
  }
}
