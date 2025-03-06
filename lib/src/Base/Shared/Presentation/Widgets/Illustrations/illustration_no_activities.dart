  part of 'imports_illustrations.dart';


class IllustrationNoActivities extends StatelessWidget {

  const IllustrationNoActivities({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IllustrationPageBuilder(
      title: "no_activities",
      body: "",
      imageUrl: Assets.images.noChats,
      showRedirectIcon: false,
    );
  }
}
