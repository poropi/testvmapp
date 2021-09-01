import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testvmapp/home/MyHomeRepository.dart';

final myHomeViewModelProvider = ChangeNotifierProvider((ref) => MyHomeViewModel(repository: ref.read(myHomeRepositoryProvider)));

class MyHomeViewModel extends ChangeNotifier {

  int _counter = 0;

  MyHomeRepository? repository;

  MyHomeViewModel({this.repository});

  int getCounter() {
    return _counter;
  }

  void incrementCounter() {
    this.repository?.incrementCounter().then((resultModel) {
      _counter = resultModel.counter;
      notifyListeners();
    });
  }
}