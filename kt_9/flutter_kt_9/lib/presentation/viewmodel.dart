import 'package:flutter/material.dart';
import '../data/model.dart';

class CurrencyConverterViewModel extends ChangeNotifier {
  CurrencyConverter _currencyConverter = CurrencyConverter();
  double _amountInUSD = 0.0;
  double _convertedAmount = 0.0;

  double get amountInUSD => _amountInUSD;
  double get convertedAmount => _convertedAmount;
  double get exchangeRate => _currencyConverter.exchangeRate;

  void updateAmount(double amount) {
    _amountInUSD = amount;
    _convertedAmount = _amountInUSD * _currencyConverter.exchangeRate;
    notifyListeners();
  }

  void updateExchangeRate(double rate) {
    _currencyConverter.exchangeRate = rate;
    _convertedAmount = _amountInUSD * _currencyConverter.exchangeRate;
    notifyListeners();
  }

  void convertCurrency() {
    _convertedAmount = _amountInUSD * _currencyConverter.exchangeRate;
    notifyListeners();
  }
}
