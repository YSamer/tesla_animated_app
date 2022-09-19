import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  int selectedBottomTab = 0;

  void onBottomNavigationTabChange(int index) {
    selectedBottomTab = index;
    notifyListeners();
  }

  bool isRightDoorLock = true;
  bool isLeftDoorLock = true;
  bool isBonnetDoorLock = true;
  bool isTrunkDoorLock = true;

  void updateRightDoorLock() {
    isRightDoorLock = !isRightDoorLock;
    notifyListeners();
  }

  void updateLeftDoorLock() {
    isLeftDoorLock = !isLeftDoorLock;
    notifyListeners();
  }

  void updateBonnetDoorLock() {
    isBonnetDoorLock = !isBonnetDoorLock;
    notifyListeners();
  }

  void updateTrunkDoorLock() {
    isTrunkDoorLock = !isTrunkDoorLock;
    notifyListeners();
  }

  bool isCoolSelected = true;

  void updateCollSelectedTab() {
    isCoolSelected = !isCoolSelected;
    notifyListeners();
  }

  int temp = 29;

  void addOneTemp() {
    temp++;
    notifyListeners();
  }

  void removeOneTemp() {
    temp--;
    notifyListeners();
  }

  bool isShowTyres = false;

  void showTyresController(int index) {
    if (selectedBottomTab != 3 && index == 3) {
      Future.delayed(const Duration(milliseconds: 400), () {
        isShowTyres = true;
        notifyListeners();
      });
    } else {
      isShowTyres = false;
      notifyListeners();
    }
  }

  bool isShowTyreStatus = false;
  
  void tyreStatusController(int index) {
    if (selectedBottomTab != 3 && index == 3) {
      isShowTyreStatus = true;
      notifyListeners();
    } else {
      Future.delayed(const Duration(milliseconds: 800), () {
        isShowTyreStatus = false;
        notifyListeners();
      });
    }
  }
}
