import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum LogoDirection { row, column }

class TomeLogo extends StatelessWidget {
  final double width;
  final double height;
  final String altText;
  final TextStyle? altStyle;
  final TextStyle? subAltStyle;
  final LogoDirection direction;

  const TomeLogo({
    super.key,
    this.width = 35,
    this.height = 35,
    this.altText = 'Tome',
    this.altStyle,
    this.subAltStyle,
    this.direction = LogoDirection.row,
  });

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: direction == LogoDirection.row ? Axis.horizontal : Axis.vertical,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.string(
          '''
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 375 374.999991" width="$width" height="$height">
            <g id="db0bb8b30a">
              <path
                style="fill:#228be6;fill-rule:evenodd;stroke:none;"
                d="M 24.710938 319.214844 C 24.628906 342.667969 35.214844 359.507812 56.5 369.714844 C 74.519531 374.96875 92.847656 371.207031 111.476562 358.429688 L 163.523438 328.230469 C 122.976562 300.878906 102.246094 265.699219 101.332031 222.71875 L 101.332031 19.582031 C 62.941406 0.03125 22.03125 26 24.710938 69.421875 Z M 24.710938 319.214844 "
              />
              <path
                style="fill:#228be6;fill-rule:evenodd;stroke:none;"
                d="M 164.410156 126.667969 L 203.742188 126.667969 C 221.265625 126.667969 235.640625 141.023438 235.640625 158.585938 C 235.640625 176.148438 221.265625 190.472656 203.742188 190.472656 L 164.410156 190.472656 L 164.410156 221.585938 C 167.117188 263.734375 206.476562 295.320312 249.347656 277.039062 L 317.621094 239.398438 C 331.054688 232.261719 340.453125 221.972656 345.789062 208.503906 C 352.78125 181.761719 344.875 161.296875 322.128906 147.191406 L 165.101562 55.867188 L 164.4375 55.480469 L 164.4375 126.667969 Z M 164.410156 126.667969 "
              />
            </g>
          </svg>
          ''',
          width: width,
          height: height,
          semanticsLabel: altText,
        ),
        if (direction == LogoDirection.row)
          const SizedBox(width: 6),
        if (direction == LogoDirection.column)
          const SizedBox(height: 6),
        Column(
          crossAxisAlignment: direction == LogoDirection.column
              ? CrossAxisAlignment.center
              : CrossAxisAlignment.start,
          children: [
            Text(
              altText,
              style: altStyle ?? const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              'Digital Spine',
              style: subAltStyle ?? const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ],
    );
  }
}