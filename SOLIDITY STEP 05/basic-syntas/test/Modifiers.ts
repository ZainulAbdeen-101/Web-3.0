import { expect } from "chai";
import { ethers } from "hardhat";

describe("Modifiers", function () {
  it("should return the newly changed ", async function () {
    const Modifiers = await ethers.getContractFactory("Modifiers");
    const modifiers = await Modifiers.deploy();
    const set=await modifiers.setNumber(10)
    await set.wait()
    expect(await modifiers.getNumber()).to.equal(10)
    


   
  });
});