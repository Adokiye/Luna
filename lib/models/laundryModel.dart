class LaundryModel {
  String name;
  int count = 0;
  int amount;

  LaundryModel(this.name, this.count, this.amount);

  @override
  String toString() {
    return "$name: $count: $amount";
  }
  }