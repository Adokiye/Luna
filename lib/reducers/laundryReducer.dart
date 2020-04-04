import 'package:redux/redux.dart';
import 'package:luno/actions/laundryActions.dart';
import 'package:luno/models/laundryModel.dart';
import 'package:luno/models/app_state.dart';

List<LaundryModel> cartItemsReducer(List<LaundryModel> items, dynamic action) {
  if (action is AddItemAction) {
    return addItem(items, action);
  } else if (action is ToggleItemStateAction) {
    return toggleItemState(items, action);
  }
  return items;
}

List<LaundryModel> addItem(List<LaundryModel> items, AddItemAction action) {
  return new List.from(items)..add(action.item);
}

List<LaundryModel> toggleItemState(
    List<LaundryModel> items, ToggleItemStateAction action) {
  List<LaundryModel> itemsNew = items
      .map((item) => item.name == action.item.name ? action.item : item)
      .toList();
  return itemsNew;
}

final Reducer<List<LaundryModel>> itemsReducer =
    combineReducers<List<LaundryModel>>([
  new TypedReducer<List<LaundryModel>, AddItemAction>(cartItemsReducer),
  new TypedReducer<List<LaundryModel>, ToggleItemStateAction>(cartItemsReducer),
]);
AppState appStateReducer(AppState state, action) {
  return AppState(
    item: itemsReducer(state.item, action),
  );
}
