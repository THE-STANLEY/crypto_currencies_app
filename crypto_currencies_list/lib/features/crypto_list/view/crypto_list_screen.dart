import 'package:flutter/material.dart';

import '../../../repositories/crypto_coins/crypto_coins_repository.dart';
import '../../../repositories/crypto_coins/models/crypto_coin.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key});

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  List<CryptoCoin>? _cryptoCoinsList;

  @override
  void initState() {
    _loadCryptoCoins();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crypto Currencies List'),
        centerTitle: true,
      ),
      body: (_cryptoCoinsList == null)
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ListView.separated(
                itemCount: _cryptoCoinsList!.length,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  final coin = _cryptoCoinsList![index];
                  return ListTile(
                    leading: Image.network(coin.imageUrl),
                    title: Text(coin.name,
                        style: Theme.of(context).textTheme.bodyMedium),
                    subtitle: Text('${coin.priceInUSD} \$',
                        style: Theme.of(context).textTheme.labelLarge),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.of(context).pushNamed('/coin', arguments: coin);
                    },
                  );
                },
              ),
            ),
    );
  }

  Future<void> _loadCryptoCoins() async {
    _cryptoCoinsList = await CryptoCoinsRepository().getCoinsList();
    setState(() {});
  }
}
