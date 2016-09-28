module Main where

import Data.Text (Text)
import Data.ByteString (ByteString)
import Control.Lens ((^.))
import Lib ( withToken
           , getStory
           , name
           )

main :: IO ()
main = do
    story <- getStory authentication projectId storyId
    print ("Story name should be printed" :: Text)
    print (story ^. name)
    where
      authentication = withToken ("7f3f76bc6ae8c48e7b528369c999c8d8" :: ByteString)
      projectId = 1440520 :: Integer
      storyId = 104591424 :: Integer
