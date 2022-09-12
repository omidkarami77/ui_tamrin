import 'package:chip_list/chip_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:text_scroll/text_scroll.dart';

class StorePage extends StatefulWidget {
  const StorePage({super.key});

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(
        leadingWidth: 100,
        centerTitle: true,
        title: Image.asset("images/title_icon.png"),
        elevation: 0,
        backgroundColor: Color(0xffF5F5F5),
        leading: Center(
          child: Row(children: [
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: Image.asset("images/search-normal.png"),
            ),
            SizedBox(
              width: 25,
            ),
            Image.asset("images/filter-edit.png")
          ]),
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              ImageSlideshow(
                /// Width of the [ImageSlideshow].
                width: double.infinity,

                /// Height of the [ImageSlideshow].
                height: 200,

                /// The page to show when first creating the [ImageSlideshow].
                initialPage: 0,

                /// The color to paint the indicator.
                indicatorColor: Colors.blue,

                /// The color to paint behind th indicator.
                indicatorBackgroundColor: Colors.grey,

                /// The widgets to display in the [ImageSlideshow].
                /// Add the sample image file into the images folder
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        'images/banner1.png',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset("images/banner2.png"),
                    ),
                  )
                ],

                /// Called whenever the page in the center of the viewport changes.
                onPageChanged: (value) {
                  print('Page changed: $value');
                },

                /// Auto scroll interval.
                /// Do not auto scroll with null or 0.
                autoPlayInterval: 3000,

                /// Loops back to first slide.
                isLoop: true,
              ),
              getListStory(),
              titlee("مشاهده بیشتر", "خبرگزاری ها"),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: _getSkilCard(),
              ),
              titlee("مشاهده بیشتر", "سردبیر ها"),
              pezeshk(),
              Container(
                height: 100,
              ),
            ]),
          ),
          Positioned(
              height: 90,
              bottom: 15.0,
              right: 0.0,
              left: 0.0,
              child: Container(
                  padding: EdgeInsets.only(bottom: 42),
                  color: Color(0xffFF033E),
                  child: Center(
                    child: TextScroll(
                      'برانکو تکذیب کرد/ نه با عمان فسخ کردم، نه با ایران مذاکره داشتم...    '
                      'بی‌نظمی شدید در مراسم رونمایی از کاپ جام جهانی و قهر نماینده فیفا...   ',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "shabnam",
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                      mode: TextScrollMode.bouncing,
                      numberOfReps: 200,
                      delayBefore: Duration(milliseconds: 2000),
                      pauseBetween: Duration(milliseconds: 1000),
                      velocity: Velocity(pixelsPerSecond: Offset(100, 0)),
                      textAlign: TextAlign.right,
                      selectable: true,
                    ),
                  ))),
        ],
      ),
    );
  }

  Widget titlee(String a, String b) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          a,
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 12,
              color: Color(0xffFF033E)),
        ),
        Spacer(),
        Text(
          b,
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: Color(0xff000000)),
        )
      ]),
    );
  }

  Widget getListStory() {
    return Container(
      height: 60,
      child: ListView.builder(
          itemCount: 1,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return getAddStoryBox();
          }),
    );
  }

  Widget getAddStoryBox() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Row(children: [
        Padding(
          padding: EdgeInsets.only(left: 16),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(17),
            ),
            height: 36,
            width: 76,
            child: Padding(
              padding: EdgeInsets.all(2),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                    child: Text(
                  "علم و دانش",
                  style: TextStyle(fontSize: 12, color: Color(0xffBFC3C8)),
                )),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(17),
            ),
            height: 36,
            width: 66,
            child: Padding(
              padding: EdgeInsets.all(2),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                    child: Text(
                  "تکنولوژی",
                  style: TextStyle(fontSize: 12, color: Color(0xffBFC3C8)),
                )),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(17),
            ),
            height: 36,
            width: 56,
            child: Padding(
              padding: EdgeInsets.all(2),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                    child: Text(
                  "ورزش",
                  style: TextStyle(fontSize: 12, color: Color(0xffBFC3C8)),
                )),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(17),
            ),
            height: 36,
            width: 56,
            child: Padding(
              padding: EdgeInsets.all(2),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                    child: Text(
                  "جهان",
                  style: TextStyle(fontSize: 12, color: Color(0xffBFC3C8)),
                )),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(17),
            ),
            height: 36,
            width: 56,
            child: Padding(
              padding: EdgeInsets.all(2),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffFFCDD8),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                    child: Text(
                  "همه",
                  style: TextStyle(fontSize: 12, color: Color(0xffFF033E)),
                )),
              ),
            ),
          ),
        ),
      ]),
    );
  }

  Widget pezeshk() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        Container(
          width: 271,
          height: 159,
          child: Image.asset("images/pezeshk.png"),
        ),
        SizedBox(
          width: 16,
        ),
        Container(
          width: 271,
          height: 159,
          child: Image.asset("images/pezeshk.png"),
        ),
        SizedBox(
          width: 16,
        ),
        Container(
          width: 271,
          height: 159,
          child: Image.asset("images/pezeshk.png"),
        ),
        SizedBox(
          width: 16,
        ),
        Container(
          width: 271,
          height: 159,
          child: Image.asset("images/pezeshk.png"),
        ),
        SizedBox(
          width: 16,
        ),
        Container(
          width: 271,
          height: 159,
          child: Image.asset("images/pezeshk.png"),
        ),
        SizedBox(
          width: 16,
        ),
        Container(
          width: 271,
          height: 159,
          child: Image.asset("images/pezeshk.png"),
        ),
        SizedBox(
          width: 16,
        ),
      ]),
    );
  }

  Widget _getSkilCard() {
    var list = ["ورزش سه", "دیجیاتو", "زومیت"];
    var listen = ["varzesh3", "digiato", "zoomit"];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (var skill in listen)
            Container(
                margin: EdgeInsets.only(left: 5, right: 5),
                child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Container(
                      width: 135,
                      height: 165,
                      child: Center(
                          child: Column(children: [
                        SizedBox(
                          height: 13,
                        ),
                        Container(
                            width: 56,
                            height: 56,
                            child: Image.asset("images/$skill.png")),
                        SizedBox(
                          height: 13,
                        ),
                        Column(
                          children: <Widget>[
                            if (skill == "varzesh3") Text("ورزش 3"),
                            if (skill == "digiato") Text("دیجیاتو"),
                            if (skill == "zoomit") Text("زومیت"),
                          ],
                        ),
                        Container(
                          width: 100,
                          padding: const EdgeInsets.only(top: 10),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "دنبال کردن",
                              style: TextStyle(color: Color(0xffFF033E)),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffFFCDD8),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        )
                      ])),
                    ))),
        ],
      ),
    );
  }
}
