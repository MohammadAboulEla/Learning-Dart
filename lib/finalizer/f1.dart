
class Database {
  // Keeps the finalizer itself reachable, otherwise it might be disposed
  // before the finalizer callback gets a chance to run.
  static final Finalizer<DBConnection> _finalizer =
  Finalizer((connection) => connection.close());

  final DBConnection _connection;

  Database._fromConnection(this._connection);

  factory Database.connect() {
    // Wraps the connection in a nice user API,
    // *and* closes connection if the user forgets to.
    final connection = DBConnection();
    final wrapper = Database._fromConnection(connection);
    // Get finalizer callback when `wrapper` is no longer reachable.
    _finalizer.attach(wrapper, connection, detach: wrapper);
    return wrapper;
  }

  void close() {
    // User requested close.
    print("connection closed");
    _connection.close();
    // Detach from finalizer, no longer needed.
    _finalizer.detach(this);
  }

  void test(){

  }
// Some useful methods.
}

class Person{

  String name = "Ahmed";
  Person(){
    print("person created");

  }
  String getName(){
    return name;
  }

  void close(){
    print("bye");
  }
}

class DBConnection{
  void close(){
    print("bye");
  }
}

void close(){
  print("bye");
}
main(){
  final Finalizer<Person> finalizer =
  Finalizer((connection) => close());
  var p1 = Person();
  Object p2 = Person();
  finalizer.attach(Object, p1,detach: close);
  p2 = Null;
  p1.name;






}