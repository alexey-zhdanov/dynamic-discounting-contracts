// SPDX-License-Identifier: MIT

/**
 *                        oooo                             oooo                            oooo        
 *                        `888                             `888                            `888        
 *   .ooooo.  oooo  oooo   888   .ooooo.  oooo d8b          888 .oo.    .oooo.    .ooooo.   888  oooo  
 *  d88' `88b `888  `888   888  d88' `88b `888""8P          888P"Y88b  `P  )88b  d88' `"Y8  888 .8P'   
 *  888ooo888  888   888   888  888ooo888  888     8888888  888   888   .oP"888  888        888888.    
 *  888        888   888   888  888        888              888   888  d8(  888  888   .o8  888 `88b.  
 *  `Y8bod8P'  `V88V"V8P' o888o `Y8bod8P' d888b            o888o o888o `Y888""8o `Y8bod8P' o888o o888o                                                                                                
 *
 **/

pragma solidity ^0.6.12;
pragma experimental ABIEncoderV2;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";
import "./IDiscountingFactory.sol";
import "./DiscountingContract.sol";


contract DiscountingFactory is IDiscountingFactory, Ownable {

    using SafeMath for uint256;

    //
    // Storage
    //

    address[] public instances;
    uint256 public value;

    //
    // Events
    //

    event TestEvent(uint256 newValue);

    //
    // External methods
    //

    function setValue(uint256 _newValue) external returns(bool) {
        value = _newValue;
        emit TestEvent(_newValue);
        return true;
    }

    function getValue() external view returns(uint256) {
        return value;
    }

    //
    // Internal methods
    //

}
