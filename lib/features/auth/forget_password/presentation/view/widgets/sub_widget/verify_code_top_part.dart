import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_block/core/common/size/app_size.dart';
import '../../../../../../../core/common/colors/app_colors.dart';
import '../../../../../../../core/routes/route_export.dart';
import '../../../../../../../widgets/buttons/custom_button.dart';
import '../../../../../../../widgets/fields/custom_text_form_field.dart';

class VerifyCodeTopPartWidget extends StatelessWidget {
  const VerifyCodeTopPartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Type a code",
          style: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(color: AppColors().darkGrey2, fontSize: 14.sp),
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                hint: "Code",
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                  vertical:AppSize.isTabletScreen(context: context)? 13.h:0
                ),
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            CustomButton(
              height: 50.h,
              buttonBody: "Resend",
              onTap: () {},
              buttonWidth: 100.w,
            )
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }
}
