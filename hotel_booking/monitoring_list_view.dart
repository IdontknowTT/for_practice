import 'package:best_flutter_ui_templates/hotel_booking/hotel_app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:best_flutter_ui_templates/test_all/lib/fake_call/fake_call.dart';

import 'model/monitoring_list_data.dart';

class HotelListView extends StatelessWidget {
  const HotelListView(
      {Key? key,
      this.hotelData1,
      this.hotelData2,
      this.animationController,
      this.animation,
      this.callback})
      : super(key: key);

  final VoidCallback? callback;
  final HotelListData1? hotelData1;
  final HotelListData2? hotelData2;
  final AnimationController? animationController;
  final Animation<double>? animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController!,
      builder: (BuildContext context, Widget? child) {
        return FadeTransition(
          opacity: animation!,

          child: Transform(
            transform: Matrix4.translationValues(
                0.0, 50 * (1.0 - animation!.value), 0.0),


            child: Padding(
              padding: const EdgeInsets.only(
                  left: 24, right: 24, top: 8, bottom: 16),
              child: InkWell(
                splashColor: Colors.transparent,
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FullScreenImage(), //사진 보이기
                  ),
                ),

                //////////////////////////////////////////////////////////////////////////////////////////
                child: Column(children:[                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Color.fromARGB(33, 47, 46, 55).withOpacity(0.6), 
                        offset: const Offset(4, 4),
                        blurRadius: 16,
                      ),
                    ],
                    border: Border.all(
                    color: Color.fromARGB(193, 53, 12, 255), // 테두리 색상을 여기서 설정합니다.
                    width: 2.0, // 테두리 두께를 설정합니다.
                  ),



                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                    child: Stack(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            AspectRatio( 
                              aspectRatio: 1.2, //이미지의 가로 대비 세로 비율 (네모박스랑 사진 비율 - 3이 적당) - 클수록 작아진다
                              child: Image.asset(
                                hotelData1!.imagePath,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              color: Color.fromARGB(193, 53, 12, 255), //2246FF
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 16, top: 8, bottom: 8), //(원래 16, 8, 8)
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              hotelData1!.titleTxt,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 22,
                                              ),
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  hotelData1!.subTxt,
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Color.fromARGB(193, 255, 255, 255),),
                                                ),
                                                const SizedBox(
                                                  width: 4,
                                                ),
                                
                                              ],
                                            ),
                                            


                                          ],
                                        ),
                                      ),
                                    ),
                                  ),

                                
                                ],
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 8,
                          right: 8,
                          child: Material(
                            color: const Color.fromARGB(0, 255, 255, 255),
                            child: InkWell(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(32.0),
                              ),
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.favorite_border,
                                  color: HotelAppTheme.buildLightTheme()
                                      .primaryColor,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

////////////////////////////////////////////////////////////////////////////////////////////////////
                SizedBox(height: 16),
                Container(
                  
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                    child: Stack(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            AspectRatio( 
                              aspectRatio: 2.2, //이미지의 가로 대비 세로 비율 (네모박스랑 사진 비율 - 3이 적당) - 클수록 작아진다
                              child: Image.asset(
                          'assets/hotel/hotel_4.png', // 이미지 경로를 사용
                          fit: BoxFit.cover,
                          ),
                            ),

                          ],
                        ),
                        Positioned(
                          top: 8,
                          right: 8,
                          child: Material(
                            color: const Color.fromARGB(0, 255, 255, 255),
                            child: InkWell(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(32.0),
                              ),
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.favorite_border,
                                  color: HotelAppTheme.buildLightTheme()
                                      .primaryColor,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
])
                /////////////////////////////////////////////////////////////////////////////////////////

              
              
              
              
              
              
              ),
            ),
            
          
          ),

        );
      },
    );
  }
}
