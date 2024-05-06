Below is a README file for the `NegativeCheck` Solidity contract. This README file is formatted using Markdown, which is a lightweight markup language with plain text formatting syntax. This format is widely used for README files because it's easy to read and write.

---

# NegativeCheck Contract

The `NegativeCheck` contract is a Solidity smart contract designed to demonstrate the handling and verification of negative integers. It provides methods to check if a given number is negative and demonstrates different error-handling strategies in Solidity using `require`, `revert`, and `assert`.

## Features

- **Check if a number is negative**: The contract includes functions that check if a number is negative and handle errors or invalid inputs using different Solidity constructs.
- **Error handling**: Demonstrates the use of `require`, `revert`, and `assert` for handling conditions and errors in smart contract development.

## Functions

### `testRequireIsNegative(int _num)`

Checks if the provided integer `_num` is negative using the `require` statement. If the number is not negative, it reverts the transaction with a message "Number is not negative".

**Parameters:**
- `int _num`: The number to check.

**Returns:**
- `string`: Confirmation message "It is a negative number" if the check passes.

### `testRevertIfNotNegative(int _num)`

Checks if the provided integer `_num` is negative. If the number is not negative, it explicitly reverts the transaction with the message "Number must be negative".

**Parameters:**
- `int _num`: The number to check.

**Returns:**
- `string`: Confirmation message "It is a negative number" if the check passes.

### `testAssertIsNegative()`

Asserts that the state variable `Number` is negative. This function uses the `assert` statement to ensure that the condition of `Number` being negative is always true as an invariant within the contract.

**Returns:**
- `string`: Confirmation message "Number is indeed negative".

## Setup and Deployment

To deploy and test the `NegativeCheck` contract, follow these steps:

1. **Install Development Tools**: Ensure you have `Node.js` and `npm` installed. Then install Truffle with `npm install -g truffle` for smart contract compilation and deployment.

2. **Setup Truffle Project**: In a new directory, initialize a Truffle project:
   ```bash
   truffle init
   ```

3. **Add the Contract**: Place the `NegativeCheck.sol` file in the `contracts` directory of your Truffle project.

4. **Compile the Contract**:
   ```bash
   truffle compile
   ```

5. **Deploy the Contract**: Use Truffle to deploy the contract on a development network:
   ```bash
   truffle develop
   ```
   Then inside the Truffle development console, run:
   ```bash
   migrate
   ```

6. **Interact with the Contract**: Use the Truffle console to interact with the deployed contract. Example:
   ```javascript
   const nc = await NegativeCheck.deployed();
   const response = await nc.testRequireIsNegative(-5);
   console.log(response);
   ```

## License

This project is licensed under the GNU General Public License v3.0 - see the [LICENSE](LICENSE) file for details.

---

This README file provides essential information about the contract, including how to setup, compile, and deploy the contract using Truffle, a popular development framework for Ethereum.
