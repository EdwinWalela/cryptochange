import 'dart:async';
import 'dart:convert';
import '../models/crypto_model.dart';
import 'package:http/http.dart' show get;

class API{
  List coins = [];
  List cryptos = ['BTC','ETH','LTC','XRP','BCH','EOS'];

  fetchCoins(int amount)async{
    var response = await get('https://min-api.cryptocompare.com/data/pricemultifull?fsyms=USD&tsyms=BTC,ETH,LTC,XRP,BCH,EOS');
    var data = json.decode(response.body);
    coins.clear();
    for(int i = 0; i < 5; i++){
      double value = data['RAW']['USD'][cryptos[i]]['PRICE'] * amount;
      String coin = data['RAW']['USD'][cryptos[i]]['TOSYMBOL'];
      double change = data['RAW']['USD'][cryptos[i]]['CHANGEDAY'];
      var newCoin = Crypto.fromJson(coin, value, change);
      coins.add(newCoin);
    }
     return coins;
  } 
}