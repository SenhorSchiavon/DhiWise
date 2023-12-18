import 'package:flutter/material.dart';
import 'package:professor_s_application1/core/app_export.dart';
import 'package:professor_s_application1/widgets/custom_elevated_button.dart';

class PickAnOptionScreen extends StatelessWidget {
  const PickAnOptionScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 18.v,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 208.h,
                margin: EdgeInsets.symmetric(horizontal: 25.h),
                child: Text(
                  "Rock\n/ paper /\nscissors".toUpperCase(),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.displayMedium,
                ),
              ),
              SizedBox(height: 8.v),
              _buildScrollColumn(context),
              SizedBox(height: 4.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildSelectButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildScrollColumn(BuildContext context) {
    return Column(
      children: [
        Text(
          "matches".toUpperCase(),
          style: theme.textTheme.headlineSmall,
        ),
        SizedBox(height: 5.v),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 4.h),
          decoration: AppDecoration.outlinePrimary.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder3,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4.v),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.roundedBorder3,
                ),
                child: Column(
                  children: [
                    _buildCardRow(
                      context,
                      imageIdentifier: ImageConstant.imgIdentifier,
                      text234: "234",
                      text12: "1/2",
                      imageAccountMultiple: ImageConstant.imgAccountMultiple,
                    ),
                    SizedBox(height: 3.v),
                    _buildCardRow(
                      context,
                      imageIdentifier:
                          ImageConstant.imgIdentifierSecondarycontainer,
                      text234: "234",
                      text12: "1/2",
                      imageAccountMultiple:
                          ImageConstant.imgAccountMultipleSecondarycontainer,
                    ),
                    SizedBox(height: 3.v),
                    _buildCardRow(
                      context,
                      imageIdentifier:
                          ImageConstant.imgIdentifierSecondarycontainer,
                      text234: "234",
                      text12: "1/2",
                      imageAccountMultiple:
                          ImageConstant.imgAccountMultipleSecondarycontainer,
                    ),
                    SizedBox(height: 3.v),
                    _buildCardRow(
                      context,
                      imageIdentifier:
                          ImageConstant.imgIdentifierSecondarycontainer,
                      text234: "234",
                      text12: "1/2",
                      imageAccountMultiple:
                          ImageConstant.imgAccountMultipleSecondarycontainer,
                    ),
                    SizedBox(height: 3.v),
                    _buildCardRow(
                      context,
                      imageIdentifier:
                          ImageConstant.imgIdentifierSecondarycontainer,
                      text234: "234",
                      text12: "1/2",
                      imageAccountMultiple:
                          ImageConstant.imgAccountMultipleSecondarycontainer,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSelectButton(BuildContext context) {
    return CustomElevatedButton(
      text: "select".toUpperCase(),
      margin: EdgeInsets.only(
        left: 30.h,
        right: 30.h,
        bottom: 20.v,
      ),
    );
  }

  /// Common widget
  Widget _buildCardRow(
    BuildContext context, {
    required String imageIdentifier,
    required String text234,
    required String text12,
    required String imageAccountMultiple,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineSecondaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder3,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: imageIdentifier,
            height: 32.adaptSize,
            width: 32.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 5.v,
              bottom: 4.v,
            ),
            child: Text(
              text234,
              style: theme.textTheme.titleMedium!.copyWith(
                color: theme.colorScheme.secondaryContainer.withOpacity(1),
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 5.v,
              bottom: 4.v,
            ),
            child: Text(
              text12,
              style: theme.textTheme.titleMedium!.copyWith(
                color: theme.colorScheme.secondaryContainer.withOpacity(1),
              ),
            ),
          ),
          CustomImageView(
            imagePath: imageAccountMultiple,
            height: 32.adaptSize,
            width: 32.adaptSize,
            margin: EdgeInsets.only(left: 10.h),
          ),
        ],
      ),
    );
  }
}
