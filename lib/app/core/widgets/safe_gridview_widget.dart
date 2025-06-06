import 'package:flutter/material.dart';

class SafeGridViewWidget extends StatelessWidget {
  final Widget? buttonContact;
  final Widget buttonVideo;
  final Widget buttonDoctorTv;
  final Widget buttonDiaryEvaluation;
  final Widget buttonRadio;
  final Widget buttonCheckout;
  final bool enUs;
  final bool isDoctorTV;
  final bool isCheckout;
  final int customerId;
  const SafeGridViewWidget(
      {super.key,
      required this.buttonContact,
      required this.buttonVideo,
      required this.buttonDoctorTv,
      required this.buttonDiaryEvaluation,
      required this.buttonRadio,
      required this.enUs,
      required this.isDoctorTV,
      required this.buttonCheckout,
      required this.isCheckout,
      required this.customerId});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // botao fale com a equipe
          buttonContact != null
              ? Expanded(
                  flex: 1,
                  child: buttonContact!,
                )
              : SizedBox(),
          // row com colunas
          Expanded(
            flex: 3,
            child: Row(
              children: [
                //coluna 1
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Expanded(
                          flex: enUs || isDoctorTV == false ? 3 : 2,
                          child: customerId == 39
                              ? buttonCheckout
                              : buttonDiaryEvaluation),
                      Visibility(
                          visible: enUs || isDoctorTV == false ? false : true,
                          child: Expanded(flex: 1, child: buttonDoctorTv)),
                    ],
                  ),
                ),
                //coluna 2
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Expanded(flex: 1, child: buttonVideo),
                      Expanded(flex: 2, child: buttonRadio),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // botao pesquisa de satisfação
          Visibility(
            visible: isCheckout,
            child: Expanded(
              flex: 1,
              child: customerId == 39 ? buttonDiaryEvaluation : buttonCheckout,
            ),
          ),
        ],
      ),
    );
  }
}
