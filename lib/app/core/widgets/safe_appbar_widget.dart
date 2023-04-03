import 'package:besafe/besafe.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';

class SafeAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final double toolbarHeight;
  final Function onPressed;
  final String backgroundAppBar;
  final String logoSafety4MeWhiteImageSource;
  final String? hospitalName;
  final Uint8List? logoClient;
  final bool isLandscape;
  const SafeAppBarWidget(
      {super.key,
      required this.toolbarHeight,
      required this.onPressed,
      required this.backgroundAppBar,
      required this.logoClient,
      required this.hospitalName,
      required this.isLandscape,
      required this.logoSafety4MeWhiteImageSource});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return AppBar(
      leading: Align(
        alignment: Alignment.topLeft,
        child: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            onPressed();
          },
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
          fit: BoxFit.cover,
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
            Image.asset(
              logoSafety4MeWhiteImageSource,
              height: toolbarHeight * 0.14,
              fit: BoxFit.fitHeight,
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
