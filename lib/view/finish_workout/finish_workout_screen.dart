import 'package:fitnessapp/common_widgets/round_gradient_button.dart';
import 'package:fitnessapp/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../common_widgets/round_button.dart';

class FinishWorkoutScreen extends StatelessWidget {
  static String routeName = "/FinishWorkoutScreen";
  const FinishWorkoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              const SizedBox(height: 20,),
              Image.asset(
                "assets/images/complete_workout.png",
                height: media.width * 0.8,
                fit: BoxFit.fitHeight,
              ),

              const SizedBox(
                height: 20,
              ),

              Text(
                "Tebrikler, Antrenmanınızı Bitirdiniz",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              Text(
                "Egzersiz kraldır ve beslenme kraliçedir. İkisini birleştirdiğinizde bir krallığınız olacaktır",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.grayColor,
                  fontSize: 12,
                ),
              ),

              const SizedBox(
                height: 8,
              ),

              Text(
                "-Jack Lalanne",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.grayColor,
                  fontSize: 12,
                ),
              ),

              const Spacer(),
              RoundGradientButton(
                  title: "Geri Dön",
                  onPressed: () {
                    Navigator.pop(context);
                  }),

              const SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
