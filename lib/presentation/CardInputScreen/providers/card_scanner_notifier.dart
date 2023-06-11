import 'package:credit_card_scanner/credit_card_scanner.dart';
import 'package:credit_card_scanner/models/card_details.dart';
import 'package:credit_card_scanner/models/card_scan_options.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'credit_card_state.dart';

final cardScannerProvider =
    StateNotifierProvider<CreditCardScannerStateNotifier, CardDetails?>((ref) {
  return CreditCardScannerStateNotifier(ref);
});

class CreditCardScannerStateNotifier extends StateNotifier<CardDetails?> {
  final StateNotifierProviderRef<Object?, Object?> ref;
  CreditCardScannerStateNotifier(this.ref) : super(null);
  CardScanOptions _scanOptions = const CardScanOptions(
    scanCardHolderName: true,
    enableDebugLogs: true,
    validCardsToScanBeforeFinishingScan: 10,
    possibleCardHolderNamePositions: [
      CardHolderNameScanPosition.aboveCardNumber,
    ],
  );

  Future<void> scanCardDetails() async {
    try {
      var cardDetails = await CardScanner.scanCard(scanOptions: _scanOptions);
      if (cardDetails != null) {
        final creditCardFormState =
            ref.read(creditCardNotifierProvider.notifier);
        if (cardDetails.cardNumber.isNotEmpty) {
          creditCardFormState.setCardNumber(cardDetails.cardNumber);
        }
        if (cardDetails.cardHolderName.isNotEmpty) {
          creditCardFormState.setNameOnCard(cardDetails.cardHolderName);
        }
        if (cardDetails.expiryDate.isNotEmpty) {
          creditCardFormState.setExpiryDate(cardDetails.expiryDate);
        }
      }
    } catch (e, s) {
      print("Error:: \t${e.toString()}\n ${s.toString()}");
    }
  }
}
