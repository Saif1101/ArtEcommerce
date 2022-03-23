import 'package:art_ecommerce/common/screenutil/screen_utils.dart';
import 'package:art_ecommerce/journeys/catalog/category_tag_box.dart';
import 'package:art_ecommerce/journeys/catalog/filter_select_box_icon.dart';
import 'package:art_ecommerce/journeys/catalog/filter_theme_popup.dart';
import 'package:art_ecommerce/journeys/catalog/select_view_popup.dart';
import 'package:art_ecommerce/journeys/catalog/sort_popup.dart';
import 'package:flutter/material.dart';

class CategoryActionsToolbar extends StatelessWidget {
  CategoryActionsToolbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 16.0),
      child: Column(
        children: [
          Row(children: [
            Expanded(
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    '115 Products',
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: Colors.black, fontWeight: FontWeight.w300),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => selectViewPopupDialog(context),
                );
              },
              child: FilterSelectBoxWithIcon(
                icon: Icons.view_headline,
              ),
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => filterThemesPopupDialog(context),
                );
              },
              child: FilterSelectBoxWithIcon(
                icon: Icons.tune_sharp,
              ),
            ),
            GestureDetector(
              onTap: (){
                 showDialog(
                  context: context,
                  builder: (BuildContext context) => sortPopupDialog(context),
                );
              },
              child: FilterSelectBoxWithIcon(
                icon: Icons.sort,
              ),
            ),
          ]),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 34,
            width: ScreenUtil.screenWidth,
            child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(width: 10);
                },
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return CategoryTagBox(
                    label: "CategoryName",
                    icon: Icons.cancel,
                  );
                }),
          ),
        ],
      ),
    );
  }
}