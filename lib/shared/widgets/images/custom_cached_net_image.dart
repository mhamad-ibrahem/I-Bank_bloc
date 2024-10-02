
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/common/colors/app_colors.dart';
import '../loading/shimmer_loading.dart';
class CustomCachedNetImage extends StatelessWidget {
  const CustomCachedNetImage({
    super.key,
    required this.imageUrl,
    this.height,
    this.width,
    this.fit, this.borderRadius,
  });
  final String imageUrl;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius??0),
      child: SizedBox(
          height: height ?? 145.h,
                  width: width ?? 100.w,
        child: CachedNetworkImage(
            imageUrl: imageUrl,
            fit: fit ?? BoxFit.cover,
            placeholder: (context, url) => ShimmerWidget.rectangle(
                  hight: height ?? 145.h,
                  width: width ?? 100.w,
                  isHorizontalRadius: true,
                  borderRadius: borderRadius??0,
                ),
            errorWidget: (context, url, error) => Container(
              alignment: Alignment.center,
                    color: AppColors().grey,
                    height: height ?? 145.h,
                    width: width ?? 100.w,
                    child: Center(
                      child:   SizedBox(
                        height: 40.h,
                        width: 40.w,
                        child: Icon(Icons.error_outline_outlined,color: AppColors().black,size: 24.w,))
                    ),
                  )
                ),
      ),
    );
  }
}
