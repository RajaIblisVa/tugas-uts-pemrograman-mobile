import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart'; // ignore: must_be_immutable

class ListsteptextItemWidget extends StatelessWidget {
  const ListsteptextItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      width: 160.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 80.v,
            width: 160.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle4,
                  height: 80.v,
                  width: 160.h,
                  alignment: Alignment.center,
                ),
                CustomIconButton(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.center,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgOverflowMenuWhiteA700,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Text(
              "Step 1",
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Text(
              "4 mnts",
              style: theme.textTheme.bodySmall,
            ),
          )
        ],
      ),
    );
  }
}
