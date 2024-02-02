import 'package:flutter/material.dart';

class SafeGridViewDesktopWidget extends StatelessWidget {
  final Widget? buttonContact;
  final Widget buttonVideo;
  final Widget buttonDoctorTv;
  final Widget buttonDiaryEvaluation;
  final Widget buttonRadio;
  final Widget buttonCheckout;
  final bool isUS;
  final bool isDoctorTV;
  final bool isCheckout;
  const SafeGridViewDesktopWidget(
      {super.key,
      required this.buttonContact,
      required this.buttonVideo,
      required this.buttonDoctorTv,
      required this.buttonDiaryEvaluation,
      required this.buttonRadio,
      required this.isUS,
      required this.isDoctorTV,
      required this.buttonCheckout,
      required this.isCheckout});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: size.width * 0.15, vertical: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // botao fale com a equipe
          buttonContact != null
              ? Expanded(
                  flex: 2,
                  child: buttonContact!,
                )
              : SizedBox(),

          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(flex: 1, child: buttonVideo),
                Visibility(
                    visible: isUS || isDoctorTV == false ? false : true,
                    child: Expanded(flex: 1, child: buttonDoctorTv)),
                Expanded(
                    flex: isUS || isDoctorTV == false ? 2 : 1,
                    child: buttonDiaryEvaluation),
                Expanded(flex: 1, child: buttonRadio),
                Visibility(
                  visible: isCheckout,
                  child: Expanded(
                    flex: 1,
                    child: buttonCheckout,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
