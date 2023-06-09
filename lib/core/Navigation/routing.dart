import 'package:credit_card_reader/core/Navigation/routes.dart';
import 'package:credit_card_reader/presentation/CardInputScreen/add_card_screen.dart';
import 'package:credit_card_reader/presentation/Home/home_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter cardAppRouter = GoRouter(
  routes: [
    GoRoute(
      path: CreditCardAppRoutes.homeScreen,
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: CreditCardAppRoutes.addCardScreen,
      builder: (context, state) => AddNewCardScreen(),
    )
  ],
);
