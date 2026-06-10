// licencia 
// SPDX-License-Identifier: LGPL-3.0-only

// Version Solidity 
pragma solidity 0.8.24; 

// Contrato
contract Calculadora {

// variables 
uint256 public resultado= 10;

// modifiers (modificadores)
modifier checkNumber(uint256 num1_) {
    if(num1_ != 10) revert();
    _;
      }

// events 
event addition (uint256 num1, uint256 num2, uint256 resultado);
event substraction (uint256 num1, uint256 num2, uint256 resultado);

// external functions
// palabra (function) + nombre + argumentos + visibilidad +  modificadores + valor dvuelto
function Addition(uint256 num1_, uint256 num2_) public returns (uint256 resultado_) {
    resultado_ = num1_ + num2_;

    emit addition(num1_, num2_, resultado);
     }

function Substraction(uint256 num1_, uint256 num2_) public returns (uint256 resultado_) {
    resultado_ = num1_ - num2_;

    emit substraction (num1_, num2_, resultado);
      }
function substraction2(int256 num1_, int256 num2_) public pure returns (int256 resultado_) {
    resultado_ = num1_ - num2_;
      }    


function multiplier(uint256 num1_) public {
  resultado = num1_;
      }   

function multiplier2(uint256 num1_) public checkNumber(num1_) {
    resultado = num1_;
      }

 //internal functions 
 function substraction_logic(uint256 num1_, uint256 num2_) internal pure returns (uint256 resultado_) {
 resultado_ = num1_ - num2_;
      }

function substraction_logic2(int256 num1_, int256 num2_) public pure returns (int256 resultado_) {
    resultado_ = num1_ - num2_;
       } 
 






}
