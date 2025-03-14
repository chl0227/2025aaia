/// week04-1.cpp  C++ 璶糶︹柑祘Α
/// 2529. Maximum Count of Positive Integer and Negative Integer
class Solution {
public:
    int maximumCount(vector<int>& nums) {
        int pos = 0, neg = 0;
        for (int i = 0; i < nums.size(); i++) {
            if (nums[i] > 0)
                pos++; /// タ计++
            if (nums[i] < 0)
                neg++; /// 璽计++
        }
        if (pos > neg)
            return pos; /// タ计ゑ耕 癳
        else
            return neg; /// ぃ礛碞璽计ゑ耕 癳
    }
};
