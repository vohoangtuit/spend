import 'package:flutter_riverpod/legacy.dart';

class CreateProvider {
  bool? expenditure;
  bool? income;

  CreateProvider({this.expenditure, this.income});
  factory CreateProvider.setNotCreate()=>CreateProvider(expenditure: false,income: false);
  CreateProvider copyWith(CreateProvider setting){
    return setting;
  }

  @override
  String toString() {
    return '{expenditure: $expenditure, income: $income}';
  }
}
class CreateState extends StateNotifier<CreateProvider> {
  CreateState() : super(CreateProvider.setNotCreate());

  void addExpenditure() {
    state = state.copyWith(CreateProvider(expenditure: true, income: false));
  }

  void addIncome() {
    state = state.copyWith(CreateProvider(expenditure:false, income: true));

  }
  void reset() {
    state = CreateProvider.setNotCreate();
  }
}
final createProvider = StateNotifierProvider<CreateState, CreateProvider>((ref) {
  return CreateState();
});
  // This class can be used