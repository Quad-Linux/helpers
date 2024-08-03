import 'package:cli_spin/cli_spin.dart';

Future<T> spin<T>(String message, Future<T> future) async {
  final spinner = CliSpin(text: message).start();
  final result = await future;
  spinner.success();
  return result;
}
