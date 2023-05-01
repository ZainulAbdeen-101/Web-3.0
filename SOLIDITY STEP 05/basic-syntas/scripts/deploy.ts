import { ethers } from "hardhat";
async function Deploying() {

  //basic contract deployment
  // const storeNo = 2;
  // const Basic = await ethers.getContractFactory("Basic");
  // const basic = await Basic.deploy(storeNo);
  // console.log(`${basic.address}`);


  // Datatype contract deployement 
  // const DataTypes=await ethers.getContractFactory("DataTypes")
  // const data=await DataTypes.deploy("zain",17)
  // console.log(data.address)


  //Variables contract deployment
  // const Variable=ethers.getContractFactory("Variable")
  // const variable=(await Variable).deploy()
  // console.log((await variable).address)


  // Arrays contract deployment 
  // const Arrays=ethers.getContractFactory("Arrays")
  // const arrays=(await Arrays).deploy()
  // console.log((await arrays).address)

  //Structs contract deployment
  // const Structs = await ethers.getContractFactory("Structs")
  // const structs = (await Structs).deploy()
  // console.log((await structs).address)


  // // Mapping Contract deployment
  // const Mappings=ethers.getContractFactory("Mappings")
  // const mappings=(await Mappings).deploy()
  // console.log((await mappings).address)
  // }

  //Modifier contract deployment
  const Modifiers=ethers.getContractFactory("Modifiers")
  const modifiers=(await Modifiers).deploy()
  console.log((await modifiers).address)
}
  Deploying().catch((error) => {
    console.error(error);
    process.exitCode = 1;
  });
