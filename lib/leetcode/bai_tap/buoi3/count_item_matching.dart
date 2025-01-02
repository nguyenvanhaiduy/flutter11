/**
 * 
 * Bạn được cho một mảng items, trong đó mỗi phần tử items[i] = [type_i, color_i, name_i] mô tả loại, màu sắc và tên của món hàng thứ i. 
Bạn cũng được cho một quy tắc được biểu diễn bởi hai chuỗi ruleKey và ruleValue.

Phần tử thứ i được cho là phù hợp với quy tắc nếu một trong các điều sau đây là đúng:
   ruleKey = "type" và ruleValue = type_i.
   ruleKey = "color" và ruleValue = color_i.
   ruleKey = "name" và ruleValue = name_i.
Trả về số lượng các phần tử phù hợp với quy tắc được cho.

 */

void main() {
  final items = [
    ["phone", "blue", "pixel"],
    ["computer", "silver", "lenovo"],
    ["phone", "gold", "iphone"]
  ];
  print(countItem(items, 'color', 'silver'));
}

int countItem(List<List<String>> items, String ruleKey, String ruleValue) {
  int count = 0;
  for (final item in items) {
    switch (ruleKey) {
      case "type":
        if (item[0] == ruleValue) {
          count++;
        }
        break;
      case "color":
        if (item[1] == ruleValue) {
          count++;
        }
        break;
      case "name":
        if (item[2] == ruleValue) {
          count++;
        }
        break;
    }
  }
  return count;
}
