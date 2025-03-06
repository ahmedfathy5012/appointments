import 'package:flutter/material.dart';

class MathText extends StatelessWidget {
  final String title;
  const MathText({super.key, this.title = ''});
  @override
  Widget build(BuildContext context) {
    return Center();
    // return TeXView(
    //   child: TeXViewColumn(children: [
    //     TeXViewInkWell(
    //       id: "id_0",
    //       child: TeXViewColumn(children: [
    //         TeXViewDocument(r"""<p>
    //                    $$ \mathrm{e}\frac{ee\sqrt5\pi}{645} $$</p>""",
    //             style: TeXViewStyle.fromCSS('color: red;'))
    //       ]),
    //     )
    //   ]),
    //   style: TeXViewStyle(
    //       // elevation: 0,
    //       // borderRadius: TeXViewBorderRadius.all(0),
    //       // border: TeXViewBorder.all(TeXViewBorderDecoration(
    //       //     borderColor: Colors.blue,
    //       //     borderStyle: TeXViewBorderStyle.solid,
    //       //     borderWidth: 5)),
    //       backgroundColor: Colors.transparent,
    //       fontStyle: TeXViewFontStyle(
    //         fontFamily: 'Cairo',
    //         fontSize: 14,
    //         fontWeight: TeXViewFontWeight.normal,
    //       )),
    // );
  }
}
