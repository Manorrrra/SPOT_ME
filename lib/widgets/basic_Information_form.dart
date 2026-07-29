import 'package:flutter/material.dart';

import '../utils/app_validators.dart';
import 'custom_text_field.dart';

class BasicInformationForm extends StatelessWidget {
  const BasicInformationForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          hintText: "Full Name",
          prefixIcon: Icons.person_outline,
          validator: AppValidators.name,
        ),

        const SizedBox(height: 18),

        CustomTextField(
          hintText: "Email Address",
          prefixIcon: Icons.email_outlined,
          keyboardType: TextInputType.emailAddress,
          validator: AppValidators.email,
        ),

        const SizedBox(height: 18),

        CustomTextField(
          hintText: "Phone Number",
          prefixIcon: Icons.phone_outlined,
          keyboardType: TextInputType.phone,
          validator: AppValidators.phone,
        ),

        const SizedBox(height: 18),

        CustomTextField(
          hintText: "Date of Birth",
          prefixIcon: Icons.calendar_today_outlined,
          validator: (value) =>
              AppValidators.required(value, fieldName: 'Date of birth'),
        ),

        const SizedBox(height: 18),

        CustomTextField(
          hintText: "Gender",
          prefixIcon: Icons.wc_outlined,
          validator: (value) =>
              AppValidators.required(value, fieldName: 'Gender'),
        ),

        const SizedBox(height: 18),

        Row(
          children: [
            Expanded(
              child: CustomTextField(
                hintText: "Height (cm)",
                prefixIcon: Icons.height,
                keyboardType: TextInputType.number,
                validator: (value) =>
                    AppValidators.required(value, fieldName: 'Height'),
              ),
            ),

            const SizedBox(width: 16),

            Expanded(
              child: CustomTextField(
                hintText: "Weight (kg)",
                prefixIcon: Icons.monitor_weight_outlined,
                keyboardType: TextInputType.number,
                validator: (value) =>
                    AppValidators.required(value, fieldName: 'Weight'),
              ),
            ),
          ],
        ),

        const SizedBox(height: 18),

        CustomTextField(
          hintText: "Nationality",
          prefixIcon: Icons.flag_outlined,
          validator: (value) =>
              AppValidators.required(value, fieldName: 'Nationality'),
        ),

        const SizedBox(height: 18),

        CustomTextField(
          hintText: "City",
          prefixIcon: Icons.location_city_outlined,
          validator: (value) =>
              AppValidators.required(value, fieldName: 'City'),
        ),

        const SizedBox(height: 18),

        CustomTextField(
          hintText: "Current Club / Academy",
          prefixIcon: Icons.groups_outlined,
          validator: (value) => AppValidators.required(
            value,
            fieldName: 'Current club / academy',
          ),
        ),

        const SizedBox(height: 18),

        CustomTextField(
          hintText: "Years of Experience",
          prefixIcon: Icons.workspace_premium_outlined,
          keyboardType: TextInputType.number,
          validator: (value) => AppValidators.required(
            value,
            fieldName: 'Years of experience',
          ),
        ),
      ],
    );
  }
}
      

          
   
