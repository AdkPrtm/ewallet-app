import 'package:template_clean_architecture/features/transfer/domain/usecases/usecases.dart';

const String username = 'yakali';
  var testTransferParams = TransferParams(
    amount: 10000,
    pin: '123123',
    sendToUsername: 'andhika',
  );

const getUserByUsernameSuccessfullyPath =
    'features/transfer/helpers/dummy_data/get_username_successfully.json';
const transferHistorySuccessfullyPath =
    'features/transfer/helpers/dummy_data/transfer_history_successfully.json';

const transferSuccessPath = 'features/transfer/helpers/dummy_data/transfer_response_success.json';
const transferFailNotEnoughBalancePath = 'features/transfer/helpers/dummy_data/transfer_response_failed_notenoughbalance.json';
const transferFailUserNotFoundPath = 'features/transfer/helpers/dummy_data/transfer_response_usernotfound.json';
const transferFailSendToYourselfPath = 'features/transfer/helpers/dummy_data/transfer_response_failed_tosendyourself.json';
