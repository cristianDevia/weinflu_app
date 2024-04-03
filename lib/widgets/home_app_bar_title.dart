import 'package:flutter/material.dart';
import 'package:weinflu_app/desing/colors.dart';

class HomeAppBarTitle extends StatelessWidget {
  const HomeAppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          margin: const EdgeInsets.only(right: 12),
          decoration: const BoxDecoration(
              image:
                  DecorationImage(image: AssetImage("assets/images/user.png")),
              borderRadius: BorderRadius.all(Radius.circular(12))),
        ),
        Expanded(
            child: Text(
          'Store Name',
          style: Theme.of(context).textTheme.headlineLarge,
        )),
        ContainerHeaderIcon(
          configMargin: const EdgeInsets.only(right: 12),
          iconButton: IconButton(
            // ignore: avoid_print
            onPressed: () => print('presionar icono de notificaciones'),
            icon: const Icon(
              Icons.notifications,
              color: WeinfluColors.brandPrimaryColor,
            ),
            tooltip: 'Notifications',
          ),
        ),
      ],
    );
  }
}

class ContainerHeaderIcon extends StatelessWidget {
  final IconButton iconButton;
  final EdgeInsets? configMargin;

  const ContainerHeaderIcon(
      {super.key, required this.iconButton, this.configMargin});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      margin: configMargin,
      decoration: BoxDecoration(
          border: Border.all(color: WeinfluColors.brandLightColorBorder),
          borderRadius: const BorderRadius.all(Radius.circular(12))),
      child: iconButton,
    );
  }
}
