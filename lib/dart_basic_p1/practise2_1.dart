void main(List<String> args) {
  /*Ví dụ dưới đây có 3 lỗi. Hãy tìm và sửa hết 3 lỗi này. Nhớ đọc ví dụ về ... nhé mọi người.*/
  var arrs = ["-1", "1", "2", null, "3", "4", "5", "6", "7"];
  Map<dynamic, List<String?>?>? sMap = {
    1: null,
    2: [],
    3: ["x", "y", "z"]
  };
  Map<dynamic, List<dynamic>?>? map = {
    "first": ["a", "b", "c", "d"]
  };
  map.addAll(sMap);
  //  // lỗi 1 : mảng arr có chưa giá trị null không thể chuyển đổi thành số và khi nó chọn tới phần tử null em sẽ chuyển nó thành 0
  List<int> arrsToInt = arrs.map((e) {
    if (e != null) {
      return int.parse(e);
    } else {
      return 0;
    }
  }).toList();
  map["second"] = arrsToInt;
  // lỗi 2:khong the goi vi sublist vi gia tri co the la null
  map["third"] = sMap.values.isNotEmpty && sMap.values.last!.length > 1
      ? sMap.values.last?.sublist(1)
      : [];
  /*Ví dụ về ...
  Cách sử dụng: [...Iterable]
  Khi sử dụng ... sẽ lấy toàn bộ phần tử của Iterable add vào trong []
  ví dụ: 
  var a = [1,2,3];
  var b = [4,5,6];
  var result = [...a, ...b] // sẽ cho ra result = [1,2,3,4,5,6]*/
  // lỗi 3: vì sMap có mảng có thể là null nên khi lấy giá trị cần có ngoại lệ còn mảng arrs thì e chuyển nếu là null thì e sẽ chuyển nó thành '2' =)))
  map["fourth"] = [
    ...arrs.map((e) => int.parse(e ?? '2')).where((e) => e % 2 == 1),
    ...arrs.where((e) => e == null),
    ...sMap[3]?.sublist(0, 2) ?? []
  ];

  print(map);
}
