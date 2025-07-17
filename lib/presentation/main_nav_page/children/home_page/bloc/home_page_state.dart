part of 'home_page_cubit.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState.initial() = _Initial;
  const factory HomePageState.loading() = _Loading;
  const factory HomePageState.carsLoading() = _CarsLoading;
  const factory HomePageState.showEmptyPage() = _ShowEmptyPage;
  const factory HomePageState.selectedLocation() = _SelectedLocation;
  const factory HomePageState.searchableContent() = _SearchableContent;
  const factory HomePageState.sortVariant({required String sortVariant}) = _SortVariant;
  const factory HomePageState.failure(String errorText) = _Failure;
}