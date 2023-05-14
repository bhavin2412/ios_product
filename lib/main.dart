import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:ios_product/provider/productProvider.dart';
import 'package:provider/provider.dart';
import 'view/screen/product_screen.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) {
      return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => PetProvider(),
          )
        ],
        child: CupertinoApp(
          debugShowCheckedModeBanner: false,
          useInheritedMediaQuery: true,
          routes: {
            '/': (p0) => HomeScreen(),
          },
        ),
      );
    },
    enabled: !kReleaseMode,
  ));
}
