import 'dart:math';

import 'package:credit_card_reader/core/data/credit_card.dart';
import 'package:credit_card_reader/presentation/CardInputScreen/providers/credit_cards_notifier.dart';
import 'package:credit_card_reader/widgets/card_place_holder.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Random random = Random();
    final List<CreditCardState> cardsList =
        ref.watch(creditCardsStateNotifier.notifier).state;
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Phiwo Vimbayo')),
        ),
        body: Center(
            child: cardsList.isEmpty
                ? CreditCard(showEmptyCard: true)
                : Container(
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: cardsList.length,
                        itemBuilder: (context, index) {
                          if (index != cardsList.length - 1) {
                            final creditCard = cardsList[index];
                            return CreditCard(
                              cardNumber: creditCard.card_number ?? '',
                              cardHolder: creditCard.ownerName ?? '',
                              expiryDate: creditCard.expiryDate ?? '',
                              cvv: creditCard.cvv ?? '',
                              backgroundColor: Color.fromRGBO(
                                random.nextInt(256),
                                random.nextInt(256),
                                random.nextInt(256),
                                1.0,
                              ),
                            );
                          } else {
                            return CreditCard(showEmptyCard: true);
                          }
                        }),
                  ) // CreditCard(
            ));
  }
}
