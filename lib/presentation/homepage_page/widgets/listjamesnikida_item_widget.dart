import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class ListjamesnikidaItemWidget extends StatelessWidget {
  const ListjamesnikidaItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      width: 160.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse432x32,
            height: 32.adaptSize,
            width: 32.adaptSize,
            radius: BorderRadius.circular(
              16.h,
            ),
          ),
          SizedBox(height: 9.v),
          Text(
            "James Nikidaw",
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 22.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgMegaphone,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  "124",
                  style: theme.textTheme.bodyMedium,
                ),
              )
            ],
          ),
          SizedBox(height: 7.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFavorite,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  "41391",
                  style: theme.textTheme.bodyMedium,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
