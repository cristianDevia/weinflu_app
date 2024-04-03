import 'package:flutter/material.dart';
import 'package:weinflu_app/desing/colors.dart';
import 'package:weinflu_app/desing/radius.dart';
import 'package:weinflu_app/widgets/home_app_bar_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 97,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: WeinfluRadius.small,
                bottomRight: WeinfluRadius.small)),
        backgroundColor: WeinfluColors.brandLightColor,
        title: const Padding(
          padding: EdgeInsets.fromLTRB(16, 45, 16, 12),
          child: HomeAppBarTitle(),
        ),
      ),
      body: const Center(
        child: Text("HOLA, Cristian 🚀!!!"),
      ),
    );
  }
}
