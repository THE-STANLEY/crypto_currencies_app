import '../features/crypto_coin/crypto_coin.dart';
import '../features/crypto_list/crypto_list.dart';

final router = {
  '/': (context) => const CryptoListScreen(),
  '/coin': (context) => const CryptoCoinScreen()
};
