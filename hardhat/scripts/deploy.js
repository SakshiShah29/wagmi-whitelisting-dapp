const {ethers} = require("hardhat");

async function main(){

  const whitelistContract=await ethers.getContractFactory("whitelist");

  const deployedContract=await whitelistContract.deploy(10);

  await deployedContract.deployed();
  console.log("Whitelist contract address:", deployedContract.address);

}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });