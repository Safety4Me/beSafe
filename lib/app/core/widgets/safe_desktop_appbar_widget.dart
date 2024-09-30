import 'package:besafe/besafe.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';

class SafeDesktopAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final double toolbarHeight;
  final bool isLandscape;
  final bool showButtonTvDoctor;
  final Function onTapLeading;
  final Function onTapAbout;
  final Function onTapOurMission;
  final Function onTapPrivacyPolicy;
  final Function onTapDoctorTv;
  final String backgroundAppBar;
  final String yWhiteLogoImageSource;
  final String aboutText;
  final String privacyPolicyText;
  final String ourMissionText;
  final String doctorTvText;
  final String? hospitalName;
  final String? logoClient;
  final bool isUS;
  const SafeDesktopAppBarWidget(
      {super.key,
      required this.toolbarHeight,
      required this.backgroundAppBar,
      required this.isLandscape,
      required this.isUS,
      required this.onTapLeading,
      required this.yWhiteLogoImageSource,
      required this.logoClient,
      required this.aboutText,
      required this.privacyPolicyText,
      required this.ourMissionText,
      required this.doctorTvText,
      required this.hospitalName,
      required this.onTapAbout,
      required this.onTapOurMission,
      required this.onTapPrivacyPolicy,
      required this.showButtonTvDoctor,
      required this.onTapDoctorTv});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return AppBar(
      centerTitle: true,
      leading: InkWell(
        onTap: () {
          onTapLeading();
        },
        child: Padding(
          padding: EdgeInsets.only(
              top: size.height * 0.02, left: size.height * 0.02),
          child: Image.asset(
            alignment: Alignment.topCenter,
            yWhiteLogoImageSource,
          ),
        ),
      ),
      automaticallyImplyLeading: false,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(5.0),
          bottomRight: Radius.circular(5.0),
        ),
      ),
      toolbarHeight: toolbarHeight,
      flexibleSpace: SizedBox(
        height: size.height,
        child: Image(
          image: AssetImage(backgroundAppBar),
          fit: BoxFit.fill,
        ),
      ),
      title: SizedBox(
        height: toolbarHeight * 0.95,
        child: Column(
          mainAxisAlignment: logoClient != null
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: size.width * 0.75,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.02,
                    vertical: size.height * 0.03),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      child: Text(
                        aboutText,
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                      onTap: () => onTapAbout(),
                    ),
                    InkWell(
                      child: Text(
                        privacyPolicyText,
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                      onTap: () => onTapPrivacyPolicy(),
                    ),
                    InkWell(
                      child: Text(
                        ourMissionText,
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                      onTap: () => onTapOurMission(),
                    ),
                    Visibility(
                      visible:
                          isUS || showButtonTvDoctor == false ? false : true,
                      child: InkWell(
                        child: Text(
                          doctorTvText,
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                        onTap: () => onTapDoctorTv(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            logoClient != null
                ? Expanded(
                    child: CustomLogos(
                      size: 0.28,
                      isLandscape: isLandscape,
                      positionLogo: CrossAxisAlignment.center,
                      logoCliente: logoClient,
                    ),
                  )
                : Padding(
                    padding: EdgeInsets.only(top: size.height * 0.07),
                    child: Container(
                      child: Center(
                        child: SelectableText(
                          textAlign: TextAlign.center,
                          hospitalName != null ? hospitalName! : 'Sem Hospital',
                          style: TextStyle(
                              color: textColor, fontSize: size.height * 0.02),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Colors.white,
                      ),
                      height: toolbarHeight * 0.38,
                      width: toolbarHeight * 0.75,
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight);
}
