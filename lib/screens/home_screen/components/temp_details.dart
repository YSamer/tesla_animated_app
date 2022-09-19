import 'package:flutter/material.dart';
import 'package:tesla_animated_app/constants.dart';
import 'package:tesla_animated_app/screens/home_screen/components/temp_btn.dart';
import 'package:tesla_animated_app/screens/home_screen/home_controller.dart';

class TempDetails extends StatelessWidget {
  const TempDetails({
    Key? key,
    required HomeController controller,
  })  : _controller = controller,
        super(key: key);

  final HomeController _controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 120,
            child: Row(
              children: [
                TempBtn(
                  icon: 'assets/icons/coolShape.svg',
                  title: 'Cool',
                  isActive: _controller.isCoolSelected,
                  press: _controller.updateCollSelectedTab,
                  activeColor: primaryColor,
                ),
                const SizedBox(width: defaultPadding),
                TempBtn(
                  icon: 'assets/icons/heatShape.svg',
                  title: 'Heat',
                  isActive: !_controller.isCoolSelected,
                  press: _controller.updateCollSelectedTab,
                  activeColor: redColor,
                ),
              ],
            ),
          ),
          const Spacer(),
          Column(
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: _controller.addOneTemp,
                icon: const Icon(
                  Icons.arrow_drop_up,
                  size: 48,
                ),
              ),
              Text(
                '${_controller.temp}\u2103',
                style: const TextStyle(
                  fontSize: 86,
                ),
              ),
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: _controller.removeOneTemp,
                icon: const Icon(
                  Icons.arrow_drop_down,
                  size: 48,
                ),
              ),
            ],
          ),
          const Spacer(),
          Text('Current Temperature'.toUpperCase()),
          const SizedBox(height: defaultPadding),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Inside'.toUpperCase(),
                  ),
                  Text(
                    '20' + '\u2103',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ),
              const SizedBox(width: defaultPadding),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Outside'.toUpperCase(),
                    style: const TextStyle(color: Colors.white54),
                  ),
                  Text(
                    '20' + '\u2103',
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        ?.copyWith(color: Colors.white54),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
