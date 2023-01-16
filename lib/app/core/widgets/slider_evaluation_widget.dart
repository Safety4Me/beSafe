import 'package:flutter/material.dart';

class SliderEvaluation extends StatelessWidget {
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
  const SliderEvaluation({
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
    var size = MediaQuery.of(context).size.width;
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
              child: SizedBox(
            height: 0.5,
            width: 0.5,
          )),
          Expanded(
            flex: size >= 480 ? 2 : 4,
            child: Opacity(
              opacity: value == 0 ? 1 : 0.3,
              child: GestureDetector(
                child: Container(
                  child: Text(
                    "0",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  width: size >= 480 ? 80 : 480,
                  height: size >= 480 ? 80 : 480,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                ),
                onTap: setValue0,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 1,
              color: Colors.white,
            ),
          ),
          Expanded(
            flex: size >= 480 ? 2 : 4,
            child: Opacity(
              opacity: value == 1 ? 1 : 0.3,
              child: GestureDetector(
                child: Container(
                  child: Text(
                    "1",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  width: size >= 480 ? 80 : 480,
                  height: size >= 480 ? 80 : 480,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                ),
                onTap: setValue1,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 1,
              color: Colors.white,
            ),
          ),
          Expanded(
            flex: size >= 480 ? 2 : 4,
            child: Opacity(
              opacity: value == 2 ? 1 : 0.3,
              child: GestureDetector(
                child: Container(
                  child: Text(
                    "2",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  width: size >= 480 ? 80 : 480,
                  height: size >= 480 ? 80 : 480,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                ),
                onTap: setValue2,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 1,
              color: Colors.white,
            ),
          ),
          Expanded(
            flex: size >= 480 ? 2 : 4,
            child: Opacity(
              opacity: value == 3 ? 1 : 0.3,
              child: GestureDetector(
                child: Container(
                  child: Text(
                    "3",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  width: size >= 480 ? 80 : 480,
                  height: size >= 480 ? 80 : 480,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                ),
                onTap: setValue3,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 1,
              color: Colors.white,
            ),
          ),
          Expanded(
            flex: size >= 480 ? 2 : 4,
            child: Opacity(
              opacity: value == 4 ? 1 : 0.3,
              child: GestureDetector(
                child: Container(
                  child: Text(
                    "4",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  width: size >= 480 ? 80 : 480,
                  height: size >= 480 ? 80 : 480,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                ),
                onTap: setValue4,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 1,
              color: Colors.white,
            ),
          ),
          Expanded(
            flex: size >= 480 ? 2 : 4,
            child: Opacity(
              opacity: value == 5 ? 1 : 0.3,
              child: GestureDetector(
                child: Container(
                  child: Text(
                    "5",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  width: size >= 480 ? 80 : 480,
                  height: size >= 480 ? 80 : 480,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                ),
                onTap: setValue5,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 1,
              color: Colors.white,
            ),
          ),
          Expanded(
            flex: size >= 480 ? 2 : 4,
            child: Opacity(
              opacity: value == 6 ? 1 : 0.3,
              child: GestureDetector(
                child: Container(
                  child: Text(
                    "6",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  width: size >= 480 ? 80 : 480,
                  height: size >= 480 ? 80 : 480,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                ),
                onTap: setValue6,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 1,
              color: Colors.white,
            ),
          ),
          Expanded(
            flex: size >= 480 ? 2 : 4,
            child: Opacity(
              opacity: value == 7 ? 1 : 0.3,
              child: GestureDetector(
                child: Container(
                  child: Text(
                    "7",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  width: size >= 480 ? 80 : 480,
                  height: size >= 480 ? 80 : 480,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                ),
                onTap: setValue7,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 1,
              color: Colors.white,
            ),
          ),
          Expanded(
            flex: size >= 480 ? 2 : 4,
            child: Opacity(
              opacity: value == 8 ? 1 : 0.3,
              child: GestureDetector(
                child: Container(
                  child: Text(
                    "8",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  width: size >= 480 ? 80 : 480,
                  height: size >= 480 ? 80 : 480,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                ),
                onTap: setValue8,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 1,
              color: Colors.white,
            ),
          ),
          Expanded(
            flex: size >= 480 ? 2 : 4,
            child: Opacity(
              opacity: value == 9 ? 1 : 0.3,
              child: GestureDetector(
                child: Container(
                  child: Text(
                    "9",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  width: size >= 480 ? 80 : 480,
                  height: size >= 480 ? 80 : 480,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                ),
                onTap: setValue9,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 1,
              color: Colors.white,
            ),
          ),
          Expanded(
            flex: size >= 480 ? 2 : 4,
            child: Opacity(
              opacity: value == 10 ? 1 : 0.3,
              child: GestureDetector(
                child: Container(
                  child: Text(
                    "10",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  width: size >= 480 ? 80 : 480,
                  height: size >= 480 ? 80 : 480,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                ),
                onTap: setValue10,
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: SizedBox(
                height: 0.5,
                width: 0.5,
              )),
        ],
      ),
    );
  }
}
