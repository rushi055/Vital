import 'package:mysql1/mysql1.dart';

class Mysql {
  static String host = 'localhost',
                user ='root',
                password ='1234',
                db = 'company';
  static int port = 3306;

  Mysql();

  Future<MySqlConnection> getConnection() async {
    var settings = new ConnectionSettings(
        host: 'localhost',
        port: 3306,
        user: 'bob',
        password: 'wibble',
        db: 'mydb'
    );
    return await MySqlConnection.connect(settings);
  }

}