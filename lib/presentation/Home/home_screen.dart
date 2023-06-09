import 'package:credit_card_reader/presentation/CardInputScreen/providers/credit_cards_notifier.dart';
import 'package:credit_card_reader/widgets/card_place_holder.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(creditCardsStateNotifier.notifier);
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Phiwo Vimbayo')),
        ),
        body: Center(
          child: CreditCard(
            cardNumber: '1234 5678 9012 3456',
            cardHolder: 'John Doe',
            expiryDate: '12/24',
            cvv: '123',
          ),
        ));
  }
}
