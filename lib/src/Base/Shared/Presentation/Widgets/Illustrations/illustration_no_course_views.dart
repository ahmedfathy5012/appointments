  part of 'imports_illustrations.dart';


class IllustrationNoCourseViews extends StatelessWidget {

  const IllustrationNoCourseViews({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IllustrationPageBuilder(
      title: "no_course_views",
      body: "",
      imageUrl: Assets.images.noChats,
      showRedirectIcon: false,
    );
  }
}
