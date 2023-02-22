import 'package:flutter/material.dart';

import 'type.dart';

/// enum for possible option value used as identifier
enum OptionValue {
  like,
  caption,
}

/// custom data type for options data map
typedef Options = Map<OptionValue, OptionData>;

class MoreOption extends StatefulWidget {
  const MoreOption({super.key});

  @override
  State<StatefulWidget> createState() => _MoreOptionState();
}

class _MoreOptionState extends State<MoreOption> {
  /// Initialize options data
  final Options options = {
    OptionValue.like: OptionData(
      disabledIcon: Icons.thumb_down,
      disabledText: 'Dislike',
      enabledIcon: Icons.thumb_up,
      enabledText: 'Like',
    ),
    OptionValue.caption: OptionData(
      disabledIcon: Icons.closed_caption_disabled_outlined,
      disabledText: 'Caption Off',
      enabledIcon: Icons.closed_caption_outlined,
      enabledText: 'Caption on',
    ),
  };

  /// initialize initial status for each option
  Map<OptionValue, bool> optionStatus = {
    OptionValue.like: true,
    OptionValue.caption: false,
  };

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      color: const Color(0xff1c1c1e),
      icon: const Icon(
        Icons.keyboard_control_outlined,
        color: Colors.white,
      ),
      onSelected: (value) => _onMenuItemSelected(value),
      itemBuilder: (context) =>
          OptionValue.values.map((v) => _buildPopupMenuItem(v)).toList(),

      // itemBuilder: (context) => [
      //   _buildPopupMenuItems(OptionValue.like),
      //   _buildPopupMenuItems(OptionValue.caption),
      // ],
    );
  }

  /// build single popup menu item for given [OptionValue]
  PopupMenuItem _buildPopupMenuItem(OptionValue optionKey) {
    /// decide color based on option state
    Color color =
        optionStatus[optionKey]! ? Colors.blueAccent : Colors.redAccent;

    return PopupMenuItem(
      value: optionKey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            options[optionKey]!.enabledIcon,
            size: 20,
            color: color,
          ),
          const SizedBox(width: 10),
          Text(
            options[optionKey]!.enabledText,
            style: TextStyle(
              color: color,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }

  /// handler for menu option selected
  void _onMenuItemSelected(OptionValue value) {
    setState(() {
      // toggle value
      optionStatus[value] = !optionStatus[value]!;
    });
  }
}
