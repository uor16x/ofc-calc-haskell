module Main (main) where

import Test.HUnit
    ( runTestTT,
      Counts,
      runTestTT, Test (TestList) )
import qualified SuitTest
import qualified ValueTest
import qualified CardTest
import qualified BoardTest
import qualified CombinationCmpTest
import qualified CombinationInnerTest

main :: IO Counts
main = runTestTT $ TestList $
    ValueTest.result
    ++ SuitTest.result
    ++ CardTest.result
    ++ BoardTest.result
    ++ CombinationCmpTest.result
    ++ CombinationInnerTest.result
