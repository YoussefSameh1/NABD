import 'package:flutter/material.dart';
import 'package:nabd_app/core/contants/constants.dart';
import 'package:nabd_app/core/widgets/custom_button.dart';
import 'package:nabd_app/core/widgets/custom_text_field.dart';
import 'package:nabd_app/features/profile/presentation/views/change_password_view.dart';
import 'package:nabd_app/features/profile/presentation/views/widgets/clicked_text.dart';

class EditProfileViewBody extends StatelessWidget {
  const EditProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 80),
            CustomTextField(
              hintText: 'hagar emad',
              title: 'Name',
              inputType: TextInputType.name,
            ),
            const SizedBox(height: 20),
            CustomTextField(
              hintText: '01096832103',
              title: 'Phone Number',
              inputType: TextInputType.phone,
            ),
            const SizedBox(height: 20),
            CustomTextField(
              hintText: 'hajarghonim19@gmail',
              title: 'Email',
              inputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            CustomTextField(
              hintText: '************',
              title: 'Password',
              isobscure: true,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Align(
                alignment: Alignment.centerRight,
                child: ClickedText(
                  text: 'Change Password',
                  color: kPrimaryColor,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChangePasswordView(),
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 50),
            CustomButton(
              text: 'Save Changes',
              color: kPrimaryColor,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
