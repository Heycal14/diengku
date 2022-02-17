part of 'pages.dart';

class OrderHistoryPage extends StatefulWidget {
  @override
  _OrderHistoryPageState createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return null;
      },
      child:
          BlocBuilder<TransactionCubit, TransactionState>(builder: (_, state) {
        if (state is TransactionLoaded) {
          if (state.transactions.length == 0) {
            return IllustrationPage(
              title: 'Ouch! Empty',
              subtitle: "Looks like you haven't\nbuy any fish",
              picturePath: 'assets/empty.png',
              buttonTitle1: 'Find Fish',
              buttonTap1: () {},
            );
          } else {
            double listItemWidth =
                MediaQuery.of(context).size.width - 2 * defaultMargin;
            return RefreshIndicator(
              onRefresh: () async {
                await BlocProvider.of<TransactionCubit>(context)
                    .getTransactions();
              },backgroundColor: Colors.white,
              child: ListView(
                children: [
                  Column(
                    children: [
                      //// Header
                      Container(
                        height: 100,
                        width: double.infinity,
                        margin: EdgeInsets.only(bottom: defaultMargin),
                        padding:
                            EdgeInsets.symmetric(horizontal: defaultMargin),
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Favorit Diengku',
                              style: blackFontStyle1,
                            ),
                            
                          ],
                        ),
                      ),
                      //// Body
                      Container(
                        width: double.infinity,
                        color: Colors.white,
                        child: Column(
                          children: [
                            
                            SizedBox(
                              height: 16,
                            ),
                            Builder(builder: (_) {
                              List<Transaction> transactions = (selectedIndex ==
                                      0)
                                  ? state.transactions
                                      .where((element) =>
                                          element.status ==
                                              TransactionStatus.on_delivery ||
                                          element.status ==
                                              TransactionStatus.pending)
                                      .toList()
                                  : state.transactions
                                      .where((element) =>
                                          element.status ==
                                              TransactionStatus.delivered ||
                                          element.status ==
                                              TransactionStatus.cancelled)
                                      .toList();

                              return Column(
                                children: transactions
                                    .map((e) => Padding(
                                          padding: EdgeInsets.only(
                                              right: defaultMargin,
                                              left: defaultMargin,
                                              bottom: 16),
                                          child: GestureDetector(
                                            onTap: () async {
                                              if (e.status ==
                                                  TransactionStatus.pending) {
                                                await launch(e.paymentUrl);
                                              }
                                            },
                                            child: OrderListItem(
                                                transaction: e,
                                                itemWidth: listItemWidth),
                                          ),
                                        ))
                                    .toList(),
                              );
                            }),
                            SizedBox(
                              height: 60,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            );
          }
        } else {
          return Center(child: loadingIndicator);
        }
      }),
    );
  }
}
