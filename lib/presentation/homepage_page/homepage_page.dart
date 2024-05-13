import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_outlined_button.dart';
import 'widgets/listjamesnikida_item_widget.dart';
import 'widgets/recipelist_item_widget.dart'; // ignore_for_file: must_be_immutable

class HomepagePage extends StatelessWidget {
  const HomepagePage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.lightGreen50,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillLightGreen,
          child: Column(
            children: [
              _buildColumnHelloJoan(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5.v),
                    child: Column(
                      children: [
                        _buildBanner(context),
                        SizedBox(height: 27.v),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.h),
                          child: _buildPopularCreator(
                            context,
                            text: "Popular recipes",
                            text1: "See all",
                          ),
                        ),
                        SizedBox(height: 8.v),
                        _buildRecipeList(context),
                        SizedBox(height: 27.v),
                        _buildColumnPopularCr(context)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnHelloJoan(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14.v),
      decoration: AppDecoration.fillWhiteA,
      child: Column(
        children: [
          SizedBox(height: 92.v),
          CustomAppBar(
            title: Padding(
              padding: EdgeInsets.only(left: 24.h),
              child: Column(
                children: [
                  AppbarTitle(
                    text: "Hello, Joana",
                    margin: EdgeInsets.only(right: 66.h),
                  ),
                  SizedBox(height: 3.v),
                  AppbarSubtitleOne(
                    text: "What do you want to cook today?",
                  )
                ],
              ),
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgLock,
                margin: EdgeInsets.fromLTRB(24.h, 6.v, 24.h, 8.v),
              )
            ],
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBanner(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "Recipes recomendation",
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 1.v),
                  SizedBox(
                    width: 176.h,
                    child: Text(
                      "Get your personalized recipes recommendation in a 4 steps",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallGray600.copyWith(
                        height: 1.40,
                      ),
                    ),
                  )
                ],
              ),
              CustomImageView(
                imagePath: ImageConstant.imgEmojionePotOfFood,
                height: 59.adaptSize,
                width: 59.adaptSize,
                margin: EdgeInsets.only(bottom: 2.v),
              )
            ],
          ),
          SizedBox(height: 17.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CustomOutlinedButton(
                  text: "Get started",
                  margin: EdgeInsets.only(right: 6.h),
                ),
              ),
              Expanded(
                child: CustomOutlinedButton(
                  text: "Skip",
                  margin: EdgeInsets.only(left: 6.h),
                  buttonStyle: CustomButtonStyles.outlineGray,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRecipeList(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 277.v,
        child: ListView.separated(
          padding: EdgeInsets.only(left: 24.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 12.h,
            );
          },
          itemCount: 2,
          itemBuilder: (context, index) {
            return RecipelistItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnPopularCr(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 24.h),
              child: _buildPopularCreator(
                context,
                text: "Popular creator",
                text1: "See all",
              ),
            ),
            SizedBox(height: 7.v),
            SizedBox(
              height: 161.v,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 12.h,
                  );
                },
                itemCount: 3,
                itemBuilder: (context, index) {
                  return ListjamesnikidaItemWidget();
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildPopularCreator(
    BuildContext context, {
    required String text,
    required String text1,
  }) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(
            text,
            style: CustomTextStyles.titleMediumSemiBold.copyWith(
              color: appTheme.gray900,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 136.h,
            bottom: 4.v,
          ),
          child: Text(
            text1,
            style: CustomTextStyles.titleMediumOrange800.copyWith(
              color: appTheme.orange800,
            ),
          ),
        )
      ],
    );
  }
}
