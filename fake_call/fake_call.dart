import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:just_audio/just_audio.dart';


class FullScreenImage extends StatefulWidget {
  
  const FullScreenImage({Key? key, this.animationController}) : super(key: key);

  final AnimationController? animationController;


  @override
  _FullScreenImageState createState() => _FullScreenImageState();
}

class _FullScreenImageState extends State<FullScreenImage> {
  final String imageUrl = 'assets/images/doctor.png';
  late AudioPlayer _audioPlayer;
  bool isPinkWindowVisible = true;

  @override
  void initState () {
    super.initState();
    _audioPlayer = AudioPlayer();
    
    _playRingtone();
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  // 소리 안 나는데 창은 뜸

  // Future<void> _playRingtone() async {
  //   try {
  //     await _audioPlayer.play();
  //     setState(() {
  //       isPinkWindowVisible = false; // 'call' 누를 때 핑크색 창 숨김
  //     });
  //   } catch (e) {
  //     print("Error playing ringtone: $e");
  //   }
  // }

  Future<void> _playRingtone() async {
    try {
      await _audioPlayer.setAsset('assets/images/fake_bell.mp3');
      await _audioPlayer.play();
      setState(() {
        isPinkWindowVisible = false; // 'call' 누를 때 핑크색 창 숨김
      });
    } catch (e) {
      print("Error playing ringtone: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          if (isPinkWindowVisible)
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: GestureDetector(
                onTap: () async {
                  await _playRingtone();
                },
                child: Container(
                  height: 100, // 핑크색 창의 높이를 조정하세요.
                  color: Colors.pink, // 핑크색 창
                  child: Center(
                    child: Text(
                      '그럴싸',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          Positioned.fill(
            child: GestureDetector(
              onTap: () async {
                // await _playRingtone();
                Navigator.of(context).pop();
              },
              child: Container(
                color: Colors.black,
                child: PhotoView(
                  imageProvider: AssetImage(imageUrl),
                  backgroundDecoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  minScale: PhotoViewComputedScale.contained,
                  maxScale: PhotoViewComputedScale.covered * 2.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}






/*class FullScreenImage extends StatelessWidget {
  final String imageUrl = 'assets/call2.jpg'; // 이미지 파일명과 경로에 맞게 수정

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Container(
          color: Colors.black, // 배경 색을 검정으로 설정
          child: PhotoView(
            imageProvider: AssetImage(imageUrl),
            backgroundDecoration: BoxDecoration(
              color: Colors.black,
            ),
            minScale: PhotoViewComputedScale.contained,
            maxScale: PhotoViewComputedScale.covered * 2.0,
          ),
        ),
      ),
    );
  }
}
*/