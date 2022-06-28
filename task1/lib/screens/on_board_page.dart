import 'package:flutter/material.dart';
import 'package:task1/widgets/custom_button.dart';
import 'package:task1/widgets/swipe_marks.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({Key? key}) : super(key: key);

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    List<Widget> list = <Widget>[
      Column(
        children: [
          SizedBox(
            height: height * 0.15,
          ),
          Image(
            image: const AssetImage('assets/img/3.png'),
            width: width * 0.8,
            height: height * 0.4,
          ),
          const Text(
            'Get food delivery to your doorstep asap',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: height * 0.015, bottom: height * 0.015),
            child: const Text(
              'We have young and professional delivery team that will bring your food as soon as possible to your doorstep.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 145, 144, 144),
              ),
            ),
          ),
        ],
      ),
      Column(
        children: [
          SizedBox(
            height: height * 0.15,
          ),
          Image(
            image: const AssetImage('assets/img/1.png'),
            width: width * 0.8,
            height: height * 0.4,
          ),
          const Text(
            'Buy Any Food from your favorite resturant',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: height * 0.015, bottom: height * 0.015),
            child: const Text(
              'We are constantly adding your favourite resturant throughout the territory and around your area carefully selected',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 145, 144, 144),
              ),
            ),
          ),
        ],
      ),
      Column(
        children: [
          SizedBox(
            height: height * 0.15,
          ),
          Image(
            image: const AssetImage('assets/img/2.png'),
            width: width * 0.8,
            height: height * 0.4,
          ),
          const Text(
            'Get Started Now!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: height * 0.015, bottom: height * 0.015),
            child: const Text(
              'Login now and start your order!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 145, 144, 144),
              ),
            ),
          ),
        ],
      ),
    ];
    return Scaffold(
      body: Stack(
        children: [
          /* Skip **************************************************************/
          Positioned(
            top: 40,
            right: 20,
            child: ConstrainedBox(
              constraints: BoxConstraints.tightFor(
                  width: width * 0.15, height: height * 0.05),
              child: CustomButton(
                text: 'Skip',
                color: const Color.fromARGB(255, 233, 231, 231),
                borderRadius: 25,
                fontSize: 12,
                onPressed: () {},
                textColor: Colors.black,
              ),
            ),
          ),
          /* Logo **************************************************************/
          Positioned(
            width: width,
            top: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  '7',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Krave',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          /* Get Started *******************************************************/
          Positioned(
            bottom: height * 0.1,
            width: width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ConstrainedBox(
                constraints: BoxConstraints.tightFor(
                    width: width, height: height * 0.08),
                child: CustomButton(
                  text: 'Get Started',
                  color: Colors.teal,
                  borderRadius: 5,
                  fontSize: 18,
                  onPressed: () {},
                  textColor: Colors.white,
                ),
              ),
            ),
          ),
          /* Swipe Marks *******************************************************/
          Positioned(
            bottom: height * 0.22,
            width: width,
            child: SwipeMarks(
                width: width, height: height, currentPage: currentPage),
          ),
          /* Sign up ***********************************************************/
          Positioned(
            bottom: height * 0.045,
            width: width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Don\'t have an account? ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Text(
                  'Sign Up',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, color: Colors.teal),
                ),
              ],
            ),
          ),
          /* Page View *********************************************************/
          Container(
            padding: const EdgeInsets.all(20),
            child: PageView(
              children: list,
              onPageChanged: (int index) {
                setState(() {
                  currentPage = index;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
