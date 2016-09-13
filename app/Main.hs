module Main where

import Protolude
import Network.Wreq (defaults)
import Control.Lens ((^.))
import Lib ( withToken
           , getStory
           , name
           )

main :: IO ()
main = do
    story <- getStory authentication projectId storyId
    print ("Story name should be printed" :: Text)
    -- When the funcions in the lib are defined you can uncomment the line bellow
    -- print $ story ^. name
    where
      authentication = withToken ("7f3f76bc6ae8c48e7b528369c999c8d8" :: Text) defaults
      projectId = (1440520 :: Integer)
      storyId = (104591424 :: Integer)
