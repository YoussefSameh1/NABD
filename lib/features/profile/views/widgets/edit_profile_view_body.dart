import 'package:flutter/material.dart';
import 'package:nabd_app/constants.dart';
import 'package:nabd_app/features/profile/views/change_password_view.dart';
import 'package:nabd_app/features/profile/views/widgets/clicked_text.dart';
import 'package:nabd_app/features/profile/views/widgets/custom_button.dart';
import 'package:nabd_app/features/profile/views/widgets/custom_text_field.dart';

class EditProfileViewBody extends StatelessWidget {
  const EditProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 80),
          CustomTextField(hint: 'hagar emad', label: 'Name', inputType: TextInputType.name),
          const SizedBox(height: 20),
          CustomTextField(hint: '01096832103', label: 'Phone Number', inputType: TextInputType.phone),
          const SizedBox(height: 20),
          CustomTextField(hint: 'hajarghonim19@gmail', label: 'Email', inputType: TextInputType.emailAddress),
          const SizedBox(height: 20),
          CustomTextField(hint: '************', label: 'Password', isobscure: true),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Align(
              alignment: Alignment.centerRight,
              child: ClickedText(text: 'Change Password', color: kPrimaryColor, onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ChangePasswordView()));
              },),
            ),
          ),
          const SizedBox(height: 50),
          CustomButton(text: 'Save Changes', color: kPrimaryColor),
        ],
      ),
    );
  }
}