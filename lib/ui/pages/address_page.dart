part of 'pages.dart';

class AddressPage extends StatefulWidget {
  final User user;
  final String password;
  final File pictureFile;

  AddressPage(this.user, this.password, this.pictureFile);

  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController houseNumController = TextEditingController();
  bool isLoading = false;
  List<String> cities;
  String selectedCity;

  @override
  void initState() {
    super.initState();

    cities = ['Banjarnegara', 'Baturaden', 'Purbalingga','Purwokerto','Banyumas','Magelang','Wonosobo','Yogjakarta','Pekalongan'];
    selectedCity = cities[0];
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            child: Text(
              "Nomor Telepon",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black)),
            child: TextField(
              controller: phoneController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: 'Tulis nomor telepon anda'),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Text(
              "Alamat",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black)),
            child: TextField(
              controller: addressController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: 'Tulis alamat anda'),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Text(
              "Nomor Rumah",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black)),
            child: TextField(
              controller: houseNumController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: 'Tulis nomor rumah anda'),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Text(
              "Kota",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black)),
            child: DropdownButton(
                value: selectedCity,
                isExpanded: true,
                underline: SizedBox(),
                items: cities
                    .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text(
                          e,
                          style: blackFontStyle3,
                        )))
                    .toList(),
                onChanged: (item) {
                  setState(() {
                    selectedCity = item;
                  });
                }),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 24),
            height: 45,
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: (isLoading == true)
                ? Center(
                    child: loadingIndicator,
                  )
                : RaisedButton(
                    onPressed: () async {
                      User user = widget.user.copyWith(
                          phoneNumber: phoneController.text,
                          address: addressController.text,
                          houseNumber: houseNumController.text,
                          city: selectedCity);

                      setState(() {
                        isLoading = true;
                      });

                      await BlocProvider.of<UserCubit>(context).signUp(
                          user, widget.password,
                          pictureFile: widget.pictureFile);

                      UserState state =
                          BlocProvider.of<UserCubit>(context).state;

                      if (state is UserLoaded) {
                        BlocProvider.of<FoodCubit>(context).getFoods();
                        BlocProvider.of<TransactionCubit>(context)
                            .getTransactions();
                        Get.to(MainPage());
                      } else {
                        Get.snackbar("", "",
                            backgroundColor: "D9435E".toColor(),
                            icon: Icon(
                              MdiIcons.closeCircleOutline,
                              color: Colors.white,
                            ),
                            titleText: Text(
                              "Daftar Gagal",
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            messageText: Text(
                              (state as UserLoadingFailed).message,
                              style: GoogleFonts.poppins(color: Colors.white),
                            ));
                        setState(() {
                          isLoading = false;
                        });
                      }
                    },
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    color: mainColor,
                    child: Text(
                      'Daftar Sekarang',
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
