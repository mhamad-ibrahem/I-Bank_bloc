import '../../../../../../core/routes/route_export.dart';
import 'sub_widget/verify_code_bottom_part.dart';
import 'sub_widget/verify_code_top_part.dart';

class VerifyCodeContentWidget extends StatelessWidget {
  const VerifyCodeContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        VerifyCodeTopPartWidget(),
        VerifyCodeBottomPartWidget(),
      ],
    );
  }
}
