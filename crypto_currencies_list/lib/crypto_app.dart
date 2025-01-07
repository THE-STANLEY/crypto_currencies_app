import 'package:flutter/material.dart';

import 'router/router.dart';
import 'theme/theme.dart';

class CryptoApp extends StatelessWidget {
  const CryptoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkTheme,
      routes: router,
    );
  }
}
