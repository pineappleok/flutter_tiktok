class ResponseMsg<T> {
  final bool success;
  final String msg;
  final T data;

  ResponseMsg(this.success, this.msg, this.data);
  ResponseMsg.success(msg, data) : this(true, msg, data);
  ResponseMsg.fail(msg) : this(false, msg, null);

  @override
  String toString() {
    return 'ResponseMsg:$success $msg $data';
  }
}
