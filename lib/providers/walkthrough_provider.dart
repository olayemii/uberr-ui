import 'package:flutter/foundation.dart';

class WalkthroughProvider extends ChangeNotifier {
  int _currentPage = 0;
  void onPageChange(int newPage) {
    _currentPage = newPage;
    notifyListeners();
  }

  int get currentPageValue => _currentPage;
}
