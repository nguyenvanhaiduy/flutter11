void main() {
  print(thirdMaximumNum([3, 2, 1]));
  print(thirdMaximumNum([1, 2]));
  print(thirdMaximumNum([1, 2, 2]));
}

int thirdMaximumNum(List<int> nums) {
  nums = nums.toSet().toList();
  nums.sort((a, b) => b.compareTo(a));

  if (nums.length <= 2) {
    return nums.first;
  }

  return nums[2];
}
