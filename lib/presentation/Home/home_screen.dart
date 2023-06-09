import 'package:credit_card_reader/core/data/credit_cards.dart';
import 'package:credit_card_reader/presentation/CardInputScreen/providers/credit_cards_notifier.dart';
import 'package:credit_card_reader/widgets/card_place_holder.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<CreditCardsLocalDB> cardsList =
        ref.read(creditCardsStateNotifier.notifier).state;
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Phiwo Vimbayo')),
        ),
        body: Center(
            child: cardsList.isEmpty
                ? CreditCard(showEmptyCard: true)
                : ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: cardsList.length,
                    itemBuilder: (context, index) {
                      if (index != cardsList.length) {
                        final creditCard = cardsList[index];
                        return CreditCard(
                          cardNumber: creditCard.creditCard.card_number ?? '',
                          cardHolder: creditCard.creditCard.ownerName ?? '',
                          expiryDate:
                              creditCard.creditCard.expiryDate?.join('/') ?? '',
                          cvv: creditCard.creditCard.cvv ?? '',
                        );
                      } else {
                        return CreditCard(showEmptyCard: true);
                      }
                    }) // CreditCard(
            ));
  }
}
