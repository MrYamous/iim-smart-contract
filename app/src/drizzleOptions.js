import Web3 from "web3";
import ComplexStorage from "./contracts/ComplexStorage.sol";
import SimpleStorage from "./contracts/SimpleStorage.sol";
import TutorialToken from "./contracts/TutorialToken.sol";

const options = {
  web3: {
    block: false,
    customProvider: new Web3("ws://localhost:8545"),
  },
  contracts: [SimpleStorage, ComplexStorage, TutorialToken],
  events: {
    SimpleStorage: ["StorageSet"],
  },
};

export default options;
