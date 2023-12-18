import 'package:flutter/material.dart';
import 'package:professor_s_application1/core/app_export.dart';
import 'package:professor_s_application1/presentation/home_screen/home_screen.dart';
import 'package:professor_s_application1/widgets/custom_elevated_button.dart';
import 'package:professor_s_application1/widgets/custom_text_form_field.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
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
                Spacer(
                  flex: 57,
                ),
                CustomTextFormField(
                  controller: nameController,
                  hintText: "Your nickname",
                  textInputAction: TextInputAction.done,
                ),
                Spacer(
                  flex: 42,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildRegisterButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildRegisterButton(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
      },
      text: "register".toUpperCase(),
      margin: EdgeInsets.only(
        left: 30.h,
        right: 30.h,
        bottom: 20.v,
      ),
    );
  }
}
