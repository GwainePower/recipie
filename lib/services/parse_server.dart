import 'package:parse_server_sdk/parse_server_sdk.dart';
import '../config/configuration.dart';

abstract class ParseServer {
  static Future<void> connectToServer() async {
    await Parse().initialize(
      Configuration.keyApplicationId,
      Configuration.keyParseServerUrl,
      clientKey: Configuration.keyClientKey,
      autoSendSessionId: true,
    );
  }
}
