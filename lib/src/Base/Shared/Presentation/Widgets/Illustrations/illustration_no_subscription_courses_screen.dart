part of 'imports_illustrations.dart';

class IllustrationNoSelfExamsScreen extends StatelessWidget {
  const IllustrationNoSelfExamsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IllustrationPageBuilder(
      title: "illustration_no_self_exams",
      body: "illustration_no_self_exams_details",
      imageUrl: Assets.icons.errorIllustration,
      showRedirectIcon: false,
    );
  }
}
