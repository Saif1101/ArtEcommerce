import 'package:art_ecommerce/common/screenutil/screen_utils.dart';
import 'package:art_ecommerce/widgets/tag_box.dart';
import 'package:flutter/material.dart';

class HorizontalTagScroll extends StatelessWidget {
  const HorizontalTagScroll({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenUtil.screenWidth,
      height: ScreenUtil.screenHeight * 0.0375,
      child: GridView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
         
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 16,
            crossAxisCount: 1,
            crossAxisSpacing: 8,
            childAspectRatio: 0.3,
          ),
          itemCount: 4,
          itemBuilder: (context, index) {
            return FittedBox(
                fit: BoxFit.fitHeight,
                child: TagBox(tag: 'ThemeTag $index'));
            //Text('Hello',style: Theme.of(context).textTheme.headline6,)
          }),
    );
  }
}
