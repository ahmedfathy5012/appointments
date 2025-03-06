class ParentIcons {
  ParentIcons._();
  static final ParentIcons instance = ParentIcons._();

  final String placeholder = "";
  final String parentBase0 = "parent_base0.png".parentIcons;
  final String parentBase1 = "parent_base1.png".parentIcons;
  final String parentBase2 = "parent_base2.png".parentIcons;
  final String parentBase3 = "parentBase3.png".parentIcons;


  final String parentBaseActive0 = "parent_base_active0.png".parentIcons;
  final String parentBaseActive1 = "parent_base_active1.png".parentIcons;
  final String parentBaseActive2 = "parent_base_active2.png".parentIcons;
  final String parentBaseActive3 = "parentBaseActive3.png".parentIcons;


  final String aboutApp = "about_app.png".parentIcons;
  final String accountSettings = "account_settings.png".parentIcons;
  final String children = "children.png".parentIcons;
  final String conditions = "conditions.png".parentIcons;
  final String lang = "lang.png".parentIcons;
  final String logout = "logout.png".parentIcons;
  final String parentCalling = "parent_calling.png".parentIcons;
  final String shareApp = "share_app.png".parentIcons;
  final String support = "support.png".parentIcons;



  final String stickynote = "stickynote.png".parentIcons;
  final String avatar = "avatar.png".parentIcons;
  final String phone = "phone.png".parentIcons;
  final String mail = "mail.png".parentIcons;
  final String star = "star.png".parentIcons;

  final String galleryAdd = "gallery-add.png".parentIcons;

  final String allQuestions = "allQuestions.png".parentIcons;
  final String correctAnswers = "correctAnswers.png".parentIcons;
  final String wrongAnswers = "wrongAnswers.png".parentIcons;


}

extension _IconsExtension on String {
  String get parentIcons {
    return 'assets/parent_icons/$this';
  }
}