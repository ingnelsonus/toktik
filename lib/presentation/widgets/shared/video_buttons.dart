import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';

import '../../../config/helpers/human_formats.dart';

class VideoButtons extends StatelessWidget {
  final VidePost video;

  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconBotton(value: video.likes, iconData: Icons.favorite, iconColor: Colors.red),
        const SizedBox(height: 20),
        _CustomIconBotton(value: video.views, iconData: Icons.remove_red_eye_outlined,iconColor: Colors.white,),
        const SizedBox(height: 20),
        SpinPerfect(
          infinite: true,
          duration: const Duration(seconds: 5),
          child: const _CustomIconBotton(value: 0, iconData: Icons.play_circle_outline)
          )
      ],
    );
  }
}

class _CustomIconBotton extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color? color;

  const _CustomIconBotton(
      {required this.value, required this.iconData, iconColor})
      : color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(onPressed: () {}, icon: Icon(iconData, color: color)),

        if(value>0)
          Text(HumanFormats.humanReadbleNumber(value.toDouble()))        
      ],
    );
  }
}
