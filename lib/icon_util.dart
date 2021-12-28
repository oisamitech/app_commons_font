library font_awesome_flutter;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:font_awesome_flutter/name_icon_mapping.dart';

class IconUtil {
  IconUtil._();

  static IconData getIconByName(String iconName, String iconType) {
    IconData? icon;

    if (iconType == 'duotone') {
      icon = faIconNameMappingDuotone[iconName];
    } else {
      icon = faIconNameMapping['$iconType $iconName'];
    }

    icon ??= FontAwesomeIcons.lightExclamationCircle;

    return icon;
  }

  static IconData getIconById(String iconId, String iconType) {
    var codePoint = int.parse('0x$iconId');

    switch (iconType) {
      case 'light':
        return IconDataLight(codePoint);
      case 'solid':
        return IconDataSolid(codePoint);
      case 'regular':
        return IconDataRegular(codePoint);
      case 'brands':
        return IconDataBrands(codePoint);
      case 'duotone':
        return IconDataDuotone(codePoint);
      default:
        return FontAwesomeIcons.lightExclamationCircle;
    }
  }
}
