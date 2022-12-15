void main() {
  var electronics = {
    'AC': 32000,
    "TV": 40000,
    "Mobile Phone": 25000,
    "Oven": 20000,
    "Laptop": 750000
  };

  electronics.forEach((k, v) => print('${k}::${v}'));

  int sum = 0, max = 0;
  for (int i in electronics.values) {
    sum = sum + i;

    if (i > max) max = i;
  }

  var average = sum / electronics.values.length;
  print("Average: $average");
  var key = electronics.keys.firstWhere((j) => electronics[j] == max);
  print("Maximum priced product is $key having price $max");
}
