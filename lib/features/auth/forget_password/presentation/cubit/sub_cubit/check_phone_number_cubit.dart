import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_block/core/routes/route_export.dart';
import 'package:ui_block/features/auth/forget_password/data/model/forget_password_model.dart';
import 'package:ui_block/shared/widgets/loading/loading_dialog.dart';
import '../../../domain/use_case/check_number_use_case.dart';
import '../forget_password_cubit.dart';

mixin CheckPhoneNumberCubit on Cubit<ForgetPasswordState> {
  final TextEditingController phoneNumber = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  checkPhoneNumber(
      {required BuildContext context,
      required CheckNumberUseCase checkNumberUseCase}) async {
    if (formKey.currentState!.validate()) {
       showLoadingDialog(context: context);
    await  checkNumberUseCase.execute(ForgetPasswordModel(
        phoneNumber:"+970${phoneNumber.text}",
        context: context,
        codeSentCallBack: () {
          context.push(AppRoutes().verifyRoute);
        },
      ));
    }
  }
}
