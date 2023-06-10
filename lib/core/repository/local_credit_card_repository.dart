import 'dart:core';

import 'package:credit_card_reader/core/data/credit_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class LocalCreditCardRepository {
  late Future<Isar> _isar;

  LocalCreditCardRepository() {
    _isar = openLocalDB();
  }

  Future<List<CreditCardState>> getCreditCards() async {
    try {
      final localDb = await _isar;
      final creditCards = await localDb.creditCardStates.where().findAll();
      return creditCards;
    } catch (e, s) {
      debugPrint(
          "Oooops::\t ${e.toString()} \n stracktrace: \n  ${s.toString()}\n \n");
      return Future.error(e);
    }
  }

  Future<void> saveCreditCard(CreditCardState creditCard) async {
    try {
      final localDb = await _isar;
      localDb.writeTxnSync(() => localDb.creditCardStates.putSync(creditCard));
    } catch (e, s) {
      debugPrint(
          "Oooops::\t ${e.toString()} \n stracktrace: \n  ${s.toString()}\n \n");
      return Future.error(e);
    }
  }

  Future<Isar> openLocalDB() async {
    try {
      final dir = await getApplicationDocumentsDirectory();
      if (Isar.instanceNames.isEmpty) {
        return await Isar.open([CreditCardStateSchema],
            inspector: true, directory: dir.path);
      }
      return Future.value(Isar.getInstance());
    } catch (e, s) {
      debugPrint(
          "Oooops::\t \t ${e.toString()} \n stracktrace: \n  ${s.toString()}\n \n");
      return Future.error(e);
    }
  }
}
