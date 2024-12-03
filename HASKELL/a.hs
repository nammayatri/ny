--------------------------------------------------------------------------
-- A.hs
--
-- (c) 2012-2021 Andres Loeh, Well-Typed LLP
{-# OPTIONS_GHC -Wall #-}

-- (the above line enables more compiler warnings; useful for beginners)
module A where

--------------------------------------------------------------------------
-- Introduction:
--
-- In this module, the goal is to write some basic functions.
--
-- Many of these functions are actually available either in the Prelude
-- or from the standard libraries. However, the goal here is to
-- reimplement them without using the already defined versions.
--
-- This module is carefully structured so that it already compiles. You
-- can load it into GHCi right now! However, many functions in this module
-- are not actually implemented, but rather trigger a run-time error once
-- executed. Your task is it to replace all these uses of error by proper
-- definitions.
--
-- In the beginning, we import a number of modules. We hide some functions
-- from the Prelude, so that they won't conflict with the functions of the
-- same name we are going to define in this module. Also, the hiding serves
-- as an indicator for people with advance Haskell knowledge that you should,
-- for now, *not* use functions such as map, filter, foldr etc from the
-- libraries, but define everything via pattern matching.
--
-- Remember to test all your functions in GHCi! Make sure that the module
-- loads correctly into GHCi before submitting.

import Prelude hiding (drop, filter, foldr, length, map, null, sum, take)

-- Here is the rock-paper-scissors datatype from the introduction again.

data Choice = Rock | Paper | Scissors
  deriving (Show, Eq)

-- Function to check if a choice is Paper
isPaper :: Choice -> Bool
isPaper a = (a == Paper)

-- The general structure for defining functions on lists is to follow
-- the structure of the list datatype. The list datatype has two
-- constructors of the following types:
--
--   []  :: [a]
--   (:) :: a -> [a] -> [a]
--
-- They're pronounced 'nil' and 'cons', respectively.
--
-- Following the structure of the datatype means:
--
--   * use one case per constructor (thus two cases),
--   * use pattern matching on the input,
--   * use recursion in the function wherever the datatype itself
--     is recursive (thus, use recursion on the tail of the list in
--     the cons-case).
--
-- The above is what we call the "standard design principle" for
-- functions.
--
-- From these guidelines, we obtain the following template for functions
-- on lists:
--
--   listFun :: [a] -> ...
--   listFun []       = ...
--   listFun (x : xs) = ... listFun xs ...
--
-- Try to use this template for all the following definitions. Sometimes,
-- there are shorter or more elegant solutions possible by combining and
-- reusing other functions. Nevertheless, this basic template is a good
-- strategy that you should always keep in mind.

null :: [a] -> Bool
null a = (length a == 0)

--
-- null2 xs = xs == []
-- null3 xs = length xs == 0
--
-- PLEASE ANSWER THE QUESTION HERE
