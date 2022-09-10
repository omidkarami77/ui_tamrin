import 'package:flutter/material.dart';

class DetailKhabar extends StatefulWidget {
  const DetailKhabar({super.key});

  @override
  State<DetailKhabar> createState() => _DetailKhabarState();
}

class _DetailKhabarState extends State<DetailKhabar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color(0xff323A99),
            Color(0xffF98BFC),
          ])),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            // The containers in the background

            imageContainers(),
            getContainerBox(),
          ],
        ),
      ),
    );
  }

  Widget getContainerBox() {
    return Column(
      children: [
        Container(
          height: 265,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xffF5F5F5),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(children: [
              Container(
                padding: EdgeInsets.only(right: 20, left: 20, top: 40),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(
                          "5 دقیقه قبل",
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Container(
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset("images/icon_button.png"),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    child: Text("خبر گزاری آخرین خبر",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: "shabnam")),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            backgroundColor: Color(0xffFF033E)),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Center(
                          child: Row(
                            children: [
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
                            ],
                          ),
                        ),
                      ),
                    ]),
              ),
              Container(
                padding: EdgeInsets.only(top: 37, bottom: 20),
                width: 381,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(
                          "پاسخ منفی پورتو به چلسی برای جذب طارمی \n با طعم تهدید!",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              fontFamily: "shabnam"),
                        ))
                  ],
                ),
              ),
              Container(
                child: Center(
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "فوتبال اروپا",
                        style: TextStyle(
                            color: Color(0xffFF033E),
                            fontWeight: FontWeight.w700,
                            fontFamily: "shabnam",
                            fontSize: 10),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          backgroundColor: Color(0xffFFCDD8)),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "لژینور ها",
                        style: TextStyle(
                            color: Color(0xffFF033E),
                            fontWeight: FontWeight.w700,
                            fontFamily: "shabnam",
                            fontSize: 10),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          backgroundColor: Color(0xffFFCDD8)),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "ورزشی",
                        style: TextStyle(
                            color: Color(0xffFF033E),
                            fontWeight: FontWeight.w700,
                            fontFamily: "shabnam",
                            fontSize: 10),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          backgroundColor: Color(0xffFFCDD8)),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                  ]),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 17, right: 17, top: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: Text(
                        "باشگاه چلسی که پیگیر جذب مهدی طارمی مهاجم ایران بود ،با پاسخ منفی باشگاه پورتو مواجه شد و این بازیکن با وجود رویای بازی در لیگ برتر انگلیس فعلا در پرتغال ماندنی است",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            fontFamily: "shabnam"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 17, right: 17, top: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: Text(
                        "بحث پیشنهادی باشگاه چلسی انگلیس به پورتو برای جذب مهدی طارمی در آخرین ساعات نقل و انتقالات فوتبال اروپا یکی از سوژه های اصلی هواداران دو تیم بود. این خبر درحالی رسانه ای شد که گفته می شود چلسی برای جذب طارمی مبلغ 25 میلیون یورو را به پورتو پیشنهاد داده است \n روزنامه ابولا پرتغال هم روز چهارشنبه این خبر را اعلام کرد ",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: "shabnam"),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ],
    );
  }

  Widget imageContainers() {
    return Positioned(
      top: -65,
      left: 0,
      right: 0,
      bottom: 0,
      child: Column(
        children: [
          Expanded(
            child: Container(
              child: Image(
                image: AssetImage('images/taremi_profile.png'),
              ),
            ),
          ),
          Expanded(
            child: Container(),
          )
        ],
      ),
    );
  }
}
