import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spattia/view/constants/assets.dart';
import 'package:spattia/view/constants/colors.dart';
import '../../generated/l10n.dart';

class BookmarksScreen extends StatelessWidget {
  const BookmarksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SvgPicture.asset(
          arrowBack,
          fit: BoxFit.scaleDown,
        ),
        title: Text(
          S.of(context).bookmarks,
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              moreCircle,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Column(
                  children: [
                    // SvgPicture.asset(dummyPost,),
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: SvgPicture.asset(
                            jazeera,
                            fit: BoxFit.fill,
                            semanticsLabel: 'jazeera',
                            color: blackColor,
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      dummy,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
