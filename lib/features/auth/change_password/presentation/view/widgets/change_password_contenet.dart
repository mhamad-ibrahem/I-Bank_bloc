import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/routes/route_export.dart';
import '../../../../../../widgets/buttons/custom_button.dart';
import 'sub_widget/change_password_form.dart';

class ChangePasswordContentWidget extends StatelessWidget {
  const ChangePasswordContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ChangePasswordFormWidget(),
        SizedBox(
          height: 50.h,
        ),
        Center(
            child: CustomButton(
                buttonBody: "Change password",
                onTap: () {
                  context.go(AppRoutes().successChangePasswordRoute);
                }))
      ],
    );
  }
}
