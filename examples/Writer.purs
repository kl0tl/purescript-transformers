module Example.Writer where

import Prelude

import Console
import Control.Monad.Writer
import Control.Monad.Writer.Class
import Control.Monad.Writer.Trans
import Data.String ()
import Data.Tuple

testWriter :: Writer String Number
testWriter = do
  tell "Hello from testWriter"
  return 42

main = case runWriter testWriter of
  Tuple value output -> do
    print $ output
    print $ value
