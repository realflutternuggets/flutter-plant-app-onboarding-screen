import 'package:flutter/material.dart';
import 'package:flutter_onboarding/constants.dart';

class ScanPlant extends StatefulWidget {
  const ScanPlant({Key? key}) : super(key: key);

  @override
  State<ScanPlant> createState() => _ScanPlantState();
}

class _ScanPlantState extends State<ScanPlant> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Constants _constants = Constants();

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 50,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Constants.primaryColor.withOpacity(.15),
                    ),
                    child: Icon(
                      Icons.close,
                      color: Constants.primaryColor,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => debugPrint('Share Tapped'),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Constants.primaryColor.withOpacity(.15),
                    ),
                    child: Icon(
                      Icons.share,
                      color: Constants.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 100,
            left: 20,
            right: 20,
            child: Container(
              width: size.width * .8,
              height: size.height * .8,
              padding: const EdgeInsets.all(20),
              child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/code-scan.png', height: 100,),
                      const SizedBox(height: 20,),
                      Text('Tap to Scan', style: TextStyle(
                        color: Constants.primaryColor.withOpacity(.80),
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),)
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
