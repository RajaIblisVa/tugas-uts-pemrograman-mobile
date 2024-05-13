import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_radio_button.dart';
import 'widgets/liststeptext_item_widget.dart'; // ignore_for_file: must_be_immutable

// ignore: duplicate_ignore
// ignore_for_file: must_be_immutable
class DetailScreen extends StatelessWidget {
  DetailScreen({Key? key})
      : super(
          key: key,
        );

  String ingredients = "";

  List<String> radioList = [
    "msg_4_beef_steak_cuts",
    "msg_salt_and_black_pepper",
    "msg_2_tablespoons_olive",
    "msg_2_cloves_of_garlic",
    "msg_fresh_herbs_rosemary",
    "msg_butter_for_basting"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.lightGreen50,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 2.v),
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  _buildColumnDescription(context),
                  SizedBox(height: 37.v),
                  _buildSection(context),
                  SizedBox(height: 22.v),
                  _buildColumnHowToVideo(context),
                  SizedBox(height: 22.v),
                  _buildColumnInstructions(context)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 65.v,
      leadingWidth: 52.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 14.v,
          bottom: 13.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "Classic Beef Steak",
        margin: EdgeInsets.only(left: 12.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgRiMoreFill,
          margin: EdgeInsets.fromLTRB(24.h, 16.v, 24.h, 15.v),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildColumnDescription(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.h),
      decoration: AppDecoration.fillWhiteA,
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle2270x359,
            height: 270.v,
            width: 359.h,
            radius: BorderRadius.circular(
              12.h,
            ),
          ),
          SizedBox(height: 16.v),
          Container(
            width: 318.h,
            margin: EdgeInsets.only(
              left: 16.h,
              right: 24.h,
            ),
            child: Text(
              "Beef steak is a classic and beloved dish made from tender cuts of beef, typically seasoned and grilled to perfection. The result is a succulent and flavorful piece of meat that is often enjoyed with various accompaniments like vegetables, potatoes, or sauces.",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallGray900.copyWith(
                height: 1.40,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 8.h),
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Ingredients",
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(right: 8.h),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 8.v,
                    right: 8.h,
                  ),
                  child: CustomRadioButton(
                    text: "4 beef steak cuts (e.g., sirloin, ribeye, or fillet",
                    value: radioList[0],
                    groupValue: ingredients,
                    padding: EdgeInsets.fromLTRB(8.h, 10.v, 19.h, 10.v),
                    onChange: (value) {
                      ingredients = value;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.h),
                  child: CustomRadioButton(
                    text: "Salt and black pepper to taste",
                    value: radioList[1],
                    groupValue: ingredients,
                    padding: EdgeInsets.fromLTRB(8.h, 10.v, 30.h, 10.v),
                    onChange: (value) {
                      ingredients = value;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.h),
                  child: CustomRadioButton(
                    text: "2 tablespoons olive oil",
                    value: radioList[2],
                    groupValue: ingredients,
                    padding: EdgeInsets.fromLTRB(8.h, 10.v, 30.h, 10.v),
                    onChange: (value) {
                      ingredients = value;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.h),
                  child: CustomRadioButton(
                    text: "2 cloves of garlic, minced",
                    value: radioList[3],
                    groupValue: ingredients,
                    padding: EdgeInsets.fromLTRB(8.h, 10.v, 30.h, 10.v),
                    onChange: (value) {
                      ingredients = value;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.h),
                  child: CustomRadioButton(
                    text: "Fresh herbs (rosemary or thyme), choppe",
                    value: radioList[4],
                    groupValue: ingredients,
                    padding: EdgeInsets.fromLTRB(8.h, 9.v, 27.h, 9.v),
                    onChange: (value) {
                      ingredients = value;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    right: 8.h,
                    bottom: 8.v,
                  ),
                  child: CustomRadioButton(
                    text: "Butter for basting (optional)",
                    value: radioList[5],
                    groupValue: ingredients,
                    padding: EdgeInsets.fromLTRB(8.h, 10.v, 30.h, 10.v),
                    onChange: (value) {
                      ingredients = value;
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnHowToVideo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Text(
              "How to video",
              style: theme.textTheme.labelLarge,
            ),
          ),
          SizedBox(height: 11.v),
          SizedBox(
            height: 146.v,
            child: ListView.separated(
              padding: EdgeInsets.only(left: 16.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 12.h,
                );
              },
              itemCount: 3,
              itemBuilder: (context, index) {
                return ListsteptextItemWidget();
              },
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnInstructions(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Text(
              "Instructions",
              style: theme.textTheme.labelLarge,
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: _buildColumnSearTheSteaks(
                    context,
                    title: "Prepare the Steaks:",
                    description:
                        "Take the beef steaks out of the refrigerator and let them come to room temperature for about 30 minutes.\nSeason both sides of the steaks generously with salt and black pepper. Optionally, sprinkle chopped fresh herbs over the steaks.",
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 8.h,
                    bottom: 119.v,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 12.v),
                  decoration: AppDecoration.fillWhiteA.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder12,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 31.v),
                      SizedBox(
                        width: 131.h,
                        child: Text(
                          "Preheat your grill or a heavy skillet over medium-high heat. Add olive oil and let it heat.",
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodySmall!.copyWith(
                            height: 1.40,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Spacer(),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 68.v),
                    child: _buildColumnSearTheSteaks(
                      context,
                      title: "Sear the Steaks:",
                      description:
                          "Place the steaks on the hot grill or pan. Cook for 3-5 minutes on each side for medium-rare, adjusting the time based on your preferred level of doneness.",
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      bottom: 65.v,
                    ),
                    child: _buildColumnSearTheSteaks(
                      context,
                      title: "Baste with Butter (Optional):",
                      description:
                          "In the last minute of cooking, add a small pat of butter on top of each steak and baste them with the melted butter for extra flavor and richness.",
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildColumnSearTheSteaks(
    BuildContext context, {
    required String title,
    required String description,
  }) {
    return Container(
      padding: EdgeInsets.all(12.h),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: theme.textTheme.titleSmall!.copyWith(
              color: appTheme.black900,
            ),
          ),
          SizedBox(height: 12.v),
          SizedBox(
            width: 176.h,
            child: Text(
              description,
              maxLines: null,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall!.copyWith(
                color: appTheme.black900,
                height: 1.40,
              ),
            ),
          )
        ],
      ),
    );
  }
}
