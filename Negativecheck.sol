// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract NegativeCheck {
    function testRequireIsNegative(int _num) public pure returns (string memory) {
        require(_isNegative(_num), "Number is not negative");
        return "It is a negative number";
    }

    function testRevertIfNotNegative(int _num) public pure returns (string memory) {
        if (!_isNegative(_num)) {
            revert("Number must be negative");
        }
        return "It is a negative number";
    }
    
    function _isNegative(int _num) internal pure returns (bool) {
        return _num < 0;
    }

    int public Number = -13;

    function testAssertIsNegative() public view returns (string memory) {
        assert(_isNegative(Number));
        return "Number is indeed negative";
    }
}
