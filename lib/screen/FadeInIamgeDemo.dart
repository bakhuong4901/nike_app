import 'package:flutter/material.dart';

class FadeInImageDemo extends StatelessWidget {
  String _URL =
      'https://www.google.com/search?q=rolls+royce+wraith&rlz=1C5CHFA_enVN926VN926&sxsrf=ALeKk01mJ9oBAKuJpMcVhszdkQM1TdoJ6g:1623749138672&source=lnms&tbm=isch&sa=X&ved=2ahUKEwjhjfX0qJnxAhUVM94KHY64Dk4Q_AUoAXoECAEQAw&biw=695&bih=692&dpr=2#imgrc=E5ppk9bHqc4EAM';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fade In Image'),
      ),
      body: Center(
        child: Container(
          child: FadeInImage.assetNetwork(
              fadeInCurve: Curves.bounceIn,
              fadeInDuration: const Duration(seconds: 2),
              placeholder: 'Rolls-Royce-Wraith-sang-trong-va-noi-bat.jpeg',
              image: _URL,
        ),
      ),
    ),
    );
  }
}
