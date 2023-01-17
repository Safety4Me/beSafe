import 'package:flutter/material.dart';

import '../utils/constants.dart';

class ImagesOfEvaluation extends StatelessWidget {
  final int? value;
  final VoidCallback? setValue0;
  final VoidCallback? setValue1;
  final VoidCallback? setValue2;
  final VoidCallback? setValue3;
  final VoidCallback? setValue4;
  final VoidCallback? setValue5;
  final VoidCallback? setValue6;
  final VoidCallback? setValue7;
  final VoidCallback? setValue8;
  final VoidCallback? setValue9;
  final VoidCallback? setValue10;
  const ImagesOfEvaluation({
    Key? key,
    this.value,
    this.setValue0,
    this.setValue1,
    this.setValue2,
    this.setValue3,
    this.setValue4,
    this.setValue5,
    this.setValue6,
    this.setValue7,
    this.setValue8,
    this.setValue9,
    this.setValue10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Opacity(
              opacity: value == 0 ? 1 : 0.3,
              child: GestureDetector(
                child: Image(
                  height: MediaQuery.of(context).size.height * 0.05,
                  image: AssetImage(
                    sadImageSource,
                  ),
                ),
                onTap: setValue0,
              ),
            ),
          ),
          Expanded(
            child: Opacity(
              opacity: value == 1 ? 1 : 0.3,
              child: GestureDetector(
                child: Image(
                  height: MediaQuery.of(context).size.height * 0.05,
                  image: AssetImage(
                    sadImageSource,
                  ),
                ),
                onTap: setValue1,
              ),
            ),
          ),
          Expanded(
            child: Opacity(
              opacity: value == 2 ? 1 : 0.3,
              child: GestureDetector(
                child: Image(
                  height: MediaQuery.of(context).size.height * 0.05,
                  image: AssetImage(
                    sadImageSource,
                  ),
                ),
                onTap: setValue2,
              ),
            ),
          ),
          Expanded(
            child: Opacity(
              opacity: value == 3 ? 1 : 0.3,
              child: GestureDetector(
                child: Image(
                  height: MediaQuery.of(context).size.height * 0.05,
                  image: AssetImage(
                    sadImageSource,
                  ),
                ),
                onTap: setValue3,
              ),
            ),
          ),
          Expanded(
            child: Opacity(
              opacity: value == 4 ? 1 : 0.3,
              child: GestureDetector(
                child: Image(
                  height: MediaQuery.of(context).size.height * 0.05,
                  image: AssetImage(
                    sadImageSource,
                  ),
                ),
                onTap: setValue4,
              ),
            ),
          ),
          Expanded(
            child: Opacity(
              opacity: value == 5 ? 1 : 0.3,
              child: GestureDetector(
                child: Image(
                  height: MediaQuery.of(context).size.height * 0.05,
                  image: AssetImage(
                    sadImageSource,
                  ),
                ),
                onTap: setValue5,
              ),
            ),
          ),
          Expanded(
            child: Opacity(
              opacity: value == 6 ? 1 : 0.3,
              child: GestureDetector(
                child: Image(
                  height: MediaQuery.of(context).size.height * 0.05,
                  image: AssetImage(
                    sadImageSource,
                  ),
                ),
                onTap: setValue6,
              ),
            ),
          ),
          Expanded(
            child: Opacity(
              opacity: value == 7 ? 1 : 0.3,
              child: GestureDetector(
                child: Image(
                  height: MediaQuery.of(context).size.height * 0.05,
                  image: AssetImage(
                    neutralImageSource,
                  ),
                ),
                onTap: setValue7,
              ),
            ),
          ),
          Expanded(
            child: Opacity(
              opacity: value == 8 ? 1 : 0.3,
              child: GestureDetector(
                child: Image(
                  height: MediaQuery.of(context).size.height * 0.05,
                  image: AssetImage(
                    neutralImageSource,
                  ),
                ),
                onTap: setValue8,
              ),
            ),
          ),
          Expanded(
            child: Opacity(
              opacity: value == 9 ? 1 : 0.3,
              child: GestureDetector(
                child: Image(
                  height: MediaQuery.of(context).size.height * 0.05,
                  image: AssetImage(
                    veryGoodImageSource,
                  ),
                ),
                onTap: setValue9,
              ),
            ),
          ),
          Expanded(
            child: Opacity(
              opacity: value == 10 ? 1 : 0.3,
              child: GestureDetector(
                child: Image(
                  height: MediaQuery.of(context).size.height * 0.05,
                  image: AssetImage(
                    veryGoodImageSource,
                  ),
                ),
                onTap: setValue10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
