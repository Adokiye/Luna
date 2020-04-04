import '../models/laundryModel.dart';
class AddItemAction {
  final LaundryModel item;
  AddItemAction(this.item);
}
class ToggleItemStateAction {
  final LaundryModel item;
  ToggleItemStateAction(this.item);
}