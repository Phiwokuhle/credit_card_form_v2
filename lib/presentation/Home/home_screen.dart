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
    final _creditCardsStateNotifier =
        ref.watch(creditCardsStateNotifier.notifier);
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Phiwo Vimbayo')),
        ),
        body: Center(
            child: _creditCardsStateNotifier.state.isEmpty
                ? CreditCard(showEmptyCard: true)
                : Container(
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: _creditCardsStateNotifier.state.length,
                        itemBuilder: (context, index) {
                          if (index !=
                              _creditCardsStateNotifier.state.length - 1) {
                            final creditCard =
                                _creditCardsStateNotifier.state[index];
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
