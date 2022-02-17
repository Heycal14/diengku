part of 'pages.dart';

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double listItemWidth =
        MediaQuery.of(context).size.width - 2 * defaultMargin;

    return WillPopScope(
      onWillPop: () {
        return null;
      },
      child: ListView(
        children: [
          Column(
            children: [
              //// HEADER
              Container(
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                height: 80,
                width: double.infinity,
                color: Colors.green,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Diengku',
                           style: TextStyle(
              color: Colors.white,
              fontSize: 28.0,
            )
                        ),
                      ],
                    ),
                   
          
                  ],
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Kategori',style: blackFontStyle1),
                    CustomTabBar(
                      titles: ['Keripik', 'Minuman', 'Sayuran','Kerajinan'],
                      selectedIndex: selectedIndex,
                      onTap: (index) {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                    ),
                    ],
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                width: double.infinity,
                
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Populer',style: blackFontStyle1),
                    ],
                ),
              ),
              
              Container(
                height: 258,
                width: double.infinity,
                child: BlocBuilder<FoodCubit, FoodState>(
                  builder: (_, state) => (state is FoodLoaded)
                      ? ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Row(
                              children: state.foods
                                  .map((e) => Padding(
                                        padding: EdgeInsets.only(
                                            left: (e == mockFoods.first)
                                                ? defaultMargin
                                                : 0,
                                            right: defaultMargin),
                                        child: GestureDetector(
                                            onTap: () {
                                              Get.to(FoodDetailsPage(
                                                transaction: Transaction(
                                                    food: e,
                                                    user: (BlocProvider.of<
                                                                    UserCubit>(
                                                                context)
                                                            .state as UserLoaded)
                                                        .user),
                                                onBackButtonPressed: () {
                                                  Get.back();
                                                },
                                              ));
                                            },
                                            child: FoodCard(e)),
                                      ))
                                  .toList(),
                            )
                          ],
                        )
                      : Center(child: loadingIndicator),
                ),
              ),
              Container(
                height: 258,
                width: double.infinity,
                child: BlocBuilder<FoodCubit, FoodState>(
                  builder: (_, state) => (state is FoodLoaded)
                      ? ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Row(
                              children: state.foods
                                  .map((f) => Padding(
                                        padding: EdgeInsets.only(
                                            left: (f == mockFoods.first)
                                                ? defaultMargin
                                                : 0,
                                            right: defaultMargin),
                                        child: GestureDetector(
                                            onTap: () {
                                              Get.to(FoodDetailsPage(
                                                transaction: Transaction(
                                                    food: f,
                                                    user: (BlocProvider.of<
                                                                    UserCubit>(
                                                                context)
                                                            .state as UserLoaded)
                                                        .user),
                                                onBackButtonPressed: () {
                                                  Get.back();
                                                },
                                              ));
                                            },
                                            child: FoodCard(f)),
                                      ))
                                  .toList(),
                            )
                          ],
                        )
                      : Center(child: loadingIndicator),
                ),
              ),
              //// LIST OF FOOD (TABS)
             
              SizedBox(
                height: 80,
              )
            ],
          ),
        ],
      ),
    );
  }
}
