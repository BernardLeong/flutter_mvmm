import 'package:get_it/get_it.dart';
import 'package:flutter_mvvm_template/model/network/ApiClient.dart';
// import 'package:google_map_polygon/network/jwt_interceptor.dart';
// import 'package:socket_io_client/socket_io_client.dart' as io;
import 'package:dio/dio.dart';

final serviceLocator = GetIt.instance;

//'https://vulcan-smartvision.azurewebsites.net'
//'http://10.0.2.2:4004'
void setup() {
  // WebSocket
  // serviceLocator.registerSingleton<io.Socket>(
  //   io.io('https://vulcan-smartvision.azurewebsites.net',
  //       io.OptionBuilder().setTransports(['websocket']).build()),
  // );

  // REST unauthenticated
  final Dio dio = Dio();
  serviceLocator.registerLazySingleton<RestClient>(
    () => RestClient(dio),
    instanceName: "client",
  );

  // // REST authenticated
  // final Dio authDio = Dio();
  // authDio.interceptors.add(JwtInterceptors());
  // serviceLocator.registerLazySingleton<RestClient>(
  //   () => RestClient(authDio),
  //   instanceName: "authClient",
  // );
}
