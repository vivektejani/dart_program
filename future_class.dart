Future<List<String>> server() {
  return Future<List<String>>.delayed(const Duration(seconds: 5),
      () => ["vansh", "rahul", "gopal", "meet", "amol"]);
}

void main() async {
  List data = [];

  print("\nCall server...");

  data = await server();

  print("\ndata sucsessfully arrived");

  print("\nPerson name is");
  for (int i = 0; i < data.length; i++) {
    print("=>  ${data[i]}");
  }
}
