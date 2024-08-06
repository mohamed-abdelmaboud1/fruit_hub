import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub/features/onboarding/data/models/page_view_item_model.dart';

import 'page_view_item_text_body.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.model,
  });
  final PageViewItemModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                  child: SvgPicture.asset(
                model.backgroundImage,
                fit: BoxFit.fill,
              )),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: SvgPicture.asset(
                  model.image,
                ),
              ),
              Visibility(
                visible: model.isVisible,
                child: Positioned(
                  top: 40,
                  right: 20,
                  child: Text('تخط'),
                ),
              ),
            ],
          ),
        ),
        PageViewItemTextBody(model: model),
      ],
    );
  }
}
