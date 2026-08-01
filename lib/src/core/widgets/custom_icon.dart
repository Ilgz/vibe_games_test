import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon(
    this.asset, {
    super.key,
    this.size,
    this.width,
    this.height,
    this.color,
    this.hide = false,
    this.fit = BoxFit.contain,
  });

  final String asset;
  final double? size;
  final double? width;
  final double? height;
  final Color? color;
  final bool hide;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    if (hide) {
      return const SizedBox.shrink();
    }

    final resolvedWidth = width ?? size;
    final resolvedHeight = height ?? size;

    return asset.endsWith('.svg')
        ? SvgPicture.asset(
            asset,
            width: resolvedWidth,
            height: resolvedHeight,
            colorFilter: color == null
                ? null
                : ColorFilter.mode(color!, BlendMode.srcIn),
            fit: fit,
          )
        : Image.asset(
            asset,
            width: resolvedWidth,
            height: resolvedHeight,
            color: color,
            fit: fit,
          );
  }
}
