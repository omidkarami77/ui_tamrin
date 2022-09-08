import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_button_bar/animated_button_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: ((context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                centerTitle: true,
                title: Image.asset("images/title_icon.png"),
                elevation: 0,
                backgroundColor: Color(0xffF5F5F5),
                leading: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Image.asset("images/leading_icon.png"),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  child: getview(),
                  padding: EdgeInsets.only(top: 10),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "مشاهده بیشتر ",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              color: Color(0xffFF033E)),
                        ),
                        Spacer(),
                        Text(
                          "خبر های داغ",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color(0xff000000)),
                        )
                      ]),
                ),
              ),
              SliverToBoxAdapter(
                child: _getSkilCard(),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "مشاهده بیشتر ",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              color: Color(0xffFF033E)),
                        ),
                        Text(
                          "خبر هایی که علاقه داری",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color(0xff000000)),
                        )
                      ]),
                ),
              ),
              SliverToBoxAdapter(
                child: getverticalList(),
              )
            ];
          }),
          body: Container(
            width: 100,
            height: 100,
            child: Container(width: 100, height: 100, child: Text("")),
          ),
        ),
      ),
    );
  }

  Widget _getSkilCard() {
    var list = ["android", "dart", "flutter", "java", "linux", "api"];
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          for (var skill in list)
            Container(
              width: 279,
              child: Card(
                elevation: 0,
                child: Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: EdgeInsets.all(3),
                        child: Image(
                          width: 260.0,
                          image: AssetImage('images/taremi_k.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: Text(
                              "5 دقیقه قبل",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10,
                                  color: Color(0xffBFC3C8)),
                            ),
                          ),
                          Container(
                            child: Row(children: [
                              Text(
                                "پیشنهاد نیوز",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10,
                                    color: Color(0xffBFC3C8)),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Image.asset("images/icon_red.png"),
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "پاسخ منفی پورتو به چلسی برای جذب \n طارمی  با طعم تهدید",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  color: Color(0xff1C1F2E)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Image.asset("images/icon_noghte.png")),
                          Container(
                            child: Row(children: [
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Text(
                                  "خبرگزاری آخرین خبر",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 10,
                                      color: Color(0xff1C1F2E)),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Image.asset("images/icon_khabar.png"),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ]));
  }

  Widget getverticalList() {
    var list = ["android", "dart", "flutter", "java", "linux", "api"];
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          for (var skill in list)
            Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                width: 420,
                child: Card(
                  elevation: 0,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(3),
                            child: Image(
                              width: 116.0,
                              height: 116,
                              image: AssetImage('images/cock.png'),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 116,
                        width: 260,
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 16, right: 16, top: 10),
                              child: Container(
                                width: 250,
                                child: Text(
                                  "ساعت هوشمند گارمین venu sq 2 با  عمر باتری 11 روزه معرفی شد",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Container(
                                width: 260,
                                child: Text(
                                  "گارمین در این رویداد 2022 IFA ساعت هوشمند venu sq 2 و ردیاب سلامت  کودکان موسوم به black panther vivofit jt 3 را معرفی کرد",
                                  style: TextStyle(
                                      fontSize: 8,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xffBFC3C8)),
                                ),
                              ),
                            ),

                            /// my function

                            Directionality(
                              textDirection: TextDirection.rtl,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Row(children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 4),
                                          child: Image.asset(
                                              "images/icon_zomit.png"),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 5),
                                          child: Text(
                                            "خبرگزاری زومیت",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10,
                                                color: Color(0xff1C1F2E)),
                                          ),
                                        ),
                                      ]),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(top: 6),
                                        child: Image.asset(
                                            "images/icon_noghte.png")),
                                  ],
                                ),
                              ),
                            ),

////finish my func
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ]));
  }

  getview() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(children: [
          // give the tab bar a height [can change hheight to preferred height]
          Container(
            height: 45,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                25.0,
              ),
            ),
            child: TabBar(
              controller: _tabController,
              // give the indicator a decoration (color and border radius)
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  21.0,
                ),
                color: Color(0xffFF033E),
              ),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              tabs: [
                // first tab [you can add an icon using the icon property]
                Tab(
                  child: Text(
                    "دنبال می کنید",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),

                // second tab [you can add an icon using the icon property]
                Tab(
                  child: Text("پیشنهادی",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          )
        ]));
  }
}
