part of 'pages.dart';

class SuccessOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IllustrationPage(
        title: "You've Made Order",
        subtitle: "Stay at home we will prepare\nthe best fish for you",
        picturePath: 'assets/success_order.png',
        buttonTitle1: 'Order The Fish',
        buttonTap1: () {
          Get.offAll(MainPage());
        },
        buttonTap2: () {
          Get.offAll(MainPage(
            initialPage: 1,
          ));
        },
        buttonTitle2: 'View My Order',
      ),
    );
  }
}
