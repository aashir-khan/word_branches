import 'package:dr_words/injection.dart';
import 'package:dr_words/internal/account_details/account_details.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@lazySingleton
@RegisterAs(AccountDetails, env: Env.test)
class MockAccountDetails extends Mock implements AccountDetails {}
