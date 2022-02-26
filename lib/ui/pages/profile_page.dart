part of 'pages.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return null;
      },
      child: ListView(
        children: [
          Column(
            children: [
              //// Header
              Container(
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                height: 220,
                margin: EdgeInsets.only(bottom: defaultMargin),
                width: double.infinity,
                color: Color(0x49D958),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 110,
                      height: 110,
                      margin: EdgeInsets.only(bottom: 16),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/photo_border.png'))),
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    (BlocProvider.of<UserCubit>(context).state
                                            as UserLoaded)
                                        .user
                                        .picturePath),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Text(
                      (BlocProvider.of<UserCubit>(context).state as UserLoaded)
                          .user
                          .name,
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      (BlocProvider.of<UserCubit>(context).state as UserLoaded)
                          .user
                          .email,
                      style:
                          greyFontStyle.copyWith(fontWeight: FontWeight.w300),
                    )
                  ],
                ),
              ),
              //// Body
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    CustomTabBar(
                      titles: ["Akun", "Diengku"],
                      selectedIndex: selectedIndex,
                      onTap: (index) {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Column(
                      children: ((selectedIndex == 0)
                              ? [
                                  'Edit Profile',
                                  'Home Address',
                                  'Security',
                                  'Payment',
                                ]
                              : [
                                  'Rate App',
                                  'Help Center',
                                  'Privacy & Policy',
                                  'Term & Condition'
                                ])
                          .map((e) => Padding(
                                padding: EdgeInsets.only(
                                    bottom: 16,
                                    left: defaultMargin,
                                    right: defaultMargin),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      e,
                                      style: blackFontStyle3,
                                    ),
                                    SizedBox(
                                      height: 24,
                                      width: 24,
                                      child: Image.asset(
                                        'assets/right_arrow.png',
                                        fit: BoxFit.contain,
                                      ),
                                    )
                                  ],
                                ),
                              ))
                          .toList(),
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 24),
                height: 45,
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: RaisedButton(
                  onPressed: () {
                    Get.to(SignInPage());
                  },
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  color: mainColor,
                  child: Text(
                    'Logout',
                    style: GoogleFonts.poppins(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              )
            ],
          )
        ],
      ),
    );
  }
}
