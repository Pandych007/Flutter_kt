import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'viewmodel.dart';

class CurrencyConverterView extends StatelessWidget {
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _exchangeRateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Currency Converter")),
      body: Center(
        child: Consumer<CurrencyConverterViewModel>(
          builder: (context, viewModel, child) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Exchange Rate (USD to EUR): ${viewModel.exchangeRate}',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: _amountController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Enter amount in USD',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      if (value.isNotEmpty) {
                        double amount = double.tryParse(value) ?? 0.0;
                        viewModel.updateAmount(amount);
                      }
                    },
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Amount in EUR: ${viewModel.convertedAmount.toStringAsFixed(2)}',
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: _exchangeRateController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Enter exchange rate',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),

                  ElevatedButton(
                    onPressed: () {
                      double rate =
                          double.tryParse(_exchangeRateController.text) ?? 0.91;
                      viewModel.updateExchangeRate(rate);
                      viewModel.convertCurrency();
                    },
                    child: Text('Convert Currency'),
                  ),
                  SizedBox(height: 20),

                  ElevatedButton(
                    onPressed: () {
                      double rate =
                          double.tryParse(_exchangeRateController.text) ?? 0.91;
                      viewModel.updateExchangeRate(rate);
                    },
                    child: Text('Update Exchange Rate'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
