part of 'pages.dart';

class SuccessSignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IllustrationPage(
        title: "Yeay! Completed",
        subtitle: "Now you can order some ornamental\nfish as a gift for yourself",
        picturePath: 'assets/order_confirmed.png',
        buttonTitle1: 'Find Foods',
        buttonTap1: () {},
      ),
    );
  }
}
