class LaundryModel {
  String name;
  bool checked;

  LaundryModel(this.name, this.checked);

  @override
  String toString() {
    return "$name: $checked";
  }
  }