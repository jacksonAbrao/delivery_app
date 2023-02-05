import 'package:delivery_app/app/core/ui/styles/app_styles.dart';
import 'package:delivery_app/app/core/ui/styles/colors_app.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delivery App'),
      ),
      body: Column(
        children: [
          Container(),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'teste',
            ),
          ),
          TextFormField(),
        ],
      ),
    );
  }
}
