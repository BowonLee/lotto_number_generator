import 'dart:math';

class NumberGenerator{

  /// 로또번호는 한 리스트에 중복이 없기에 Set으로 선언 */
  List<int> generateNumberList(){
    Set<int> _numberSet = new Set();

    Random random = Random();

    while (_numberSet.length < 6) {
      int _generatedNumber = random.nextInt(45);
      _numberSet.add(_generatedNumber);
    }

    return _numberSet.toList();
  }
}
