import 'package:flutter/material.dart';

class SafeButtomHomeWidget extends StatelessWidget {
  final bool isRow;
  final double width;
  final double padding;
  final double sizeIcon;
  final Function onPressed;
  final String label;
  final String backgroundImage;
  final String iconImage;
  final double sizeTextColumn;
  const SafeButtomHomeWidget(
      {super.key,
      required this.width,
      required this.padding,
      required this.onPressed,
      required this.label,
      required this.backgroundImage,
      required this.iconImage,
      required this.sizeIcon,
      required this.isRow,
      required this.sizeTextColumn});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(padding),
      child: Container(
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
              image: AssetImage(backgroundImage), fit: BoxFit.cover),
        ),
        child: ElevatedButton(
            child: isRow
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Image.asset(
                          iconImage,
                          height: sizeIcon,
                          width: sizeIcon,
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.07,
                      ),
                      Flexible(
                        flex: 3,
                        fit: FlexFit.tight,
                        child: Text(
                          label,
                          style: TextStyle(
                              fontSize: size.height * 0.025,
                              fontFamily: 'Raleway',
                              color: Colors.white),
                        ),
                      ),
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.0,
                          ),
                          child: Image.asset(
                            iconImage,
                            height: sizeIcon,
                            width: sizeIcon,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Text(
                          label,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: size.height * sizeTextColumn,
                              fontFamily: 'Raleway',
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
            onPressed: () => onPressed()),
      ),
    );
  }
}
