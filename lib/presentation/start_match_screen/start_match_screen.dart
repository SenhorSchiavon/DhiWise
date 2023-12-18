import 'package:flutter/material.dart';
import 'package:professor_s_application1/core/app_export.dart';
import 'package:professor_s_application1/widgets/custom_elevated_button.dart';
import 'package:professor_s_application1/widgets/custom_text_form_field.dart';

class StartMatchScreen extends StatelessWidget {
  StartMatchScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController matchIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 18.v,
          ),
          child: Column(
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
              SizedBox(height: 84.v),
              Text(
                "Let’s play!".toUpperCase(),
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 65.v),
              _buildFrameFive(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildStart(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameFive(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Match ID",
            style: CustomTextStyles.bodyLargePrimary,
          ),
          SizedBox(height: 4.v),
          CustomTextFormField(
            controller: matchIdController,
            hintText: "234",
            textInputAction: TextInputAction.done,
            suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 8.v, 9.h, 8.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgContentcopy,
                height: 32.adaptSize,
                width: 32.adaptSize,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 49.v,
            ),
            contentPadding: EdgeInsets.only(
              left: 30.h,
              top: 13.v,
              bottom: 13.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStart(BuildContext context) {
    return CustomElevatedButton(
      text: "start".toUpperCase(),
      margin: EdgeInsets.only(
        left: 30.h,
        right: 30.h,
        bottom: 20.v,
      ),
    );
  }
}
