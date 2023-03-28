Future<String> fetchSomeData() async {
  // Simulate fetching some data from a server
  await Future.delayed(Duration(seconds: 1));
  return "Some data";
}

void main() async {
  print("Fetching data...");
  String data = await fetchSomeData();
  print("Data fetched: $data");
}
