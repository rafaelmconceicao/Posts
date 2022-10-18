import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:posts/src/features/news/domain/entity/news_model.dart';
import 'package:posts/src/utils/helper/image_helper.dart';
import 'package:shimmer/shimmer.dart';

class CachedImageNews extends StatelessWidget {
  const CachedImageNews({Key? key, required this.image}) : super(key: key);
  final News image;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      height: 220,
      width: 200,
      imageUrl: image.user!.profilePicture!,
      imageBuilder: (context, imageProvider) =>
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              ),
            ),
          ),
      placeholder: (context, url) => Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.white,
          child: const SizedBox(
            height: 220,
            width: 200,
          )),
      errorWidget: (context, url, error) =>
          Image.asset(BotImageHelper.noImage),
    );
  }
}
