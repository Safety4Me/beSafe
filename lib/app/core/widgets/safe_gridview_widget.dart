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
  final bool showButtonGoals;
  final bool showRadio;
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
      required this.customerId,
      required this.showButtonGoals,
      required this.showRadio});

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
            flex: showRadio ? 3 : 1,
            child: Row(
              children: [
                //coluna 1
                Visibility(
                  visible: showButtonGoals || isDoctorTV,
                  child: Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Visibility(
                            visible: showButtonGoals,
                            child: Expanded(
                                flex: isDoctorTV == false ? 3 : 2,
                                child: customerId == 38
                                    ? buttonCheckout
                                    : buttonDiaryEvaluation)),
                        Visibility(
                            visible: isDoctorTV == false ? false : true,
                            child: Expanded(flex: 1, child: buttonDoctorTv)),
                      ],
                    ),
                  ),
                ),
                //coluna 2
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Expanded(flex: 1, child: buttonVideo),
                      Visibility(
                          visible: showRadio,
                          child: Expanded(
                              flex: isCheckout && customerId == 38 ? 1 : 2,
                              child: buttonRadio)),
                      Visibility(
                        visible:
                            isCheckout && customerId == 38 && showButtonGoals,
                        child: Expanded(
                          flex: 1,
                          child: buttonDiaryEvaluation,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // botao pesquisa de satisfação
          Visibility(
            visible: isCheckout && customerId != 38,
            child: Expanded(
              flex: 1,
              child: buttonCheckout,
            ),
          ),
        ],
      ),
    );
  }
}
