class HotelListData1 {
  HotelListData1({
    this.imagePath = '',
    this.titleTxt = '',
    this.subTxt = "",
    this.dist = 1.8,
    this.reviews = 80,
    this.rating = 4.5,
    this.perNight = 180,
  });

  

  String imagePath;
  String titleTxt;
  String subTxt;
  double dist;
  double rating;
  int reviews;
  int perNight;

  static List<HotelListData1> hotelList = <HotelListData1>[
    HotelListData1(
      imagePath: 'assets/hotel/hotel_5.png',
      titleTxt: '마이닥 님',
      subTxt: '글자를 누르면 주간 운동과 식단이 제공됩니다.',
      dist: 2.0,
      reviews: 80,
      rating: 4.4,
      perNight: 180,
    ),
 
    
  ];
}


/////////////////////////////////////
class HotelListData2 {
  HotelListData2({
    this.imagePath2 = '',
    this.titleTxt = '',
    this.subTxt = "",
    this.dist = 1.8,
    this.reviews = 80,
    this.rating = 4.5,
    this.perNight = 180,
  });
  String imagePath2;
  String titleTxt;
  String subTxt;
  double dist;
  double rating;
  int reviews;
  int perNight;

  static List<HotelListData2> hotelList = <HotelListData2>[

    HotelListData2(
      imagePath2: 'assets/hotel/hotel_5.png',
      titleTxt: 'hotel_list_data1이다 1111',
      subTxt: '2023년 12월 18일',
      dist: 4.0,
      reviews: 74,
      rating: 4.5,
      perNight: 200,
    ),
 
    
  ];
}

