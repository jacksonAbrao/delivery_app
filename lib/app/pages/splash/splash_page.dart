import 'package:delivery_app/app/core/config/env/env.dart';
import 'package:delivery_app/app/core/ui/styles/app_styles.dart';
import 'package:delivery_app/app/core/ui/styles/colors_app.dart';
import 'package:delivery_app/app/core/ui/widgets/delivery_button.dart';
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
          DeliveryButton(
            height: 200,
            width: 200,
            onPressed: () {},
            label: Env.i['base_url'] ?? '',
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'teste'),
          ),
        ],
      ),
    );
  }
}
