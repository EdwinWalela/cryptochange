import 'dart:async';
import 'validators.dart';
import '../utils/api.dart';

class Bloc{
  final _amountController = StreamController.broadcast();

  // Add input into the stream
   Function(String) get changeAmount => _amountController.sink.add;

  // Retrieve data
   get amount =>_amountController.stream.transform(fetchData);

  // Validators
   final fetchData = StreamTransformer.fromHandlers(
    handleData: (amount,sink)async{
     int val = int.tryParse(amount);
      if(val > 0){
        var data = await fetchCoins(int.parse(amount));
        sink.add(data);
      }else{
        sink.addError('');
      }
    }
  );
  
   static fetchCoins(int amount)async{
    var api = API();
    var response =  await api.fetchCoins(amount);
    return response;
  }


  _dispose(){
    _amountController.close();
  }


}

var bloc = Bloc();

