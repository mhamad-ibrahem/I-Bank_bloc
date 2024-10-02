
import 'package:flutter/material.dart';


focusOnImage({required String image ,bool isFileImage=false,required BuildContext context}) {
  // Get.dialog(Material(
  //   child: Stack(
  //     alignment: Alignment.topLeft,
  //     children: [
  //       PhotoView(
  //         imageProvider:!isFileImage? CachedNetworkImageProvider(image):FileImage(File(image))as ImageProvider,
  //         initialScale: PhotoViewComputedScale.contained,
  //         minScale: PhotoViewComputedScale.contained,
  //       ),
  //       Padding(
  //         padding: const EdgeInsets.all(12.0),
  //         child: Align(
  //           // alignment:LocalizationHelper.isEnglishLanguage()? Alignment.topLeft:Alignment.topRight,
  //           child: IconButton(
  //               onPressed: () {
  //              Navigator.pop(context);
  //               },
  //               icon: Icon(
  //               Icons.arrow_back_ios_rounded,
  //                 color: AppColors().white,
  //                 size: 22.w,
  //               )),
  //         ),
  //       )
  //     ],
  //   ),
  // ));
}
