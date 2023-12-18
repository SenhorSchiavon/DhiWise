import 'package:flutter/material.dart';
import 'package:professor_s_application1/core/app_export.dart';
import 'package:professor_s_application1/presentation/pick_an_option_screen/pick_an_option_screen.dart';
import 'package:professor_s_application1/presentation/register_screen/register_screen.dart';
import 'package:professor_s_application1/presentation/start_match_screen/start_match_screen.dart';
import 'package:professor_s_application1/widgets/custom_elevated_button.dart';
import 'package:professor_s_application1/widgets/custom_outlined_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key})
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
            vertical: 15.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 3.v),
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
              SizedBox(height: 51.v),
              CustomImageView(
                imagePath: ImageConstant.imgPapel,
                height: 139.v,
                width: 77.h,
              ),
              SizedBox(height: 31.v),
              CustomElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PickAnOptionScreen(),));
                },
                text: "create match".toUpperCase(),
              ),
              SizedBox(height: 15.v),
              _buildFrameSix(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildListMatches(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameSix(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 8.v,
            bottom: 7.v,
          ),
          child: SizedBox(
            width: 115.h,
            child: Divider(),
          ),
        ),
        Text(
          "OR".toUpperCase(),
          style: theme.textTheme.titleSmall,
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 8.v,
            bottom: 7.v,
          ),
          child: SizedBox(
            width: 115.h,
            child: Divider(),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildListMatches(BuildContext context) {
    return CustomOutlinedButton(
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => StartMatchScreen(),));
      },
      text: "LIST MATcHES".toUpperCase(),
      margin: EdgeInsets.only(
        left: 30.h,
        right: 30.h,
        bottom: 20.v,
      ),
    );
  }
}
