{-|
Module      : Lib
Description : Functions to fetch story data from Pivotal Tracker API.

This code is just a sample for you to start hacking.
Take a look at the API definitions at:
Story resource: https://www.pivotaltracker.com/help/api/rest/v5#story_resource
Story endpoint: https://www.pivotaltracker.com/help/api/rest/v5#Story

Then you should complete the definitions for at least 3 functions exported.
Feel free to add more functions to be exported or to create mor private functions,
these 3 are only a minimum requirement.
-}
module Lib
    ( withToken
    , getStory
    , name
    ) where

import Data.Text (Text)
import qualified Data.ByteString as BS
import qualified Data.ByteString.Lazy as BL

import Network.Wreq
import Data.Aeson.Lens
import Control.Lens

{-|
Receives the API token and returns options that can be used to issue requests using it.
-}
withToken :: BS.ByteString -> Options
withToken = undefined

{-|
Should receive options, a project id and a story id and returns a story.
-}
getStory :: (Show a, Show a1) =>
            Options
         -> a
         -> a1
         -> IO
         (Response BL.ByteString)
getStory = undefined

{-|
This is a getter that reads the story name.
Should be used with the (^.) operator from the lens library.
-}
name :: AsValue b => Traversal' (Response b) Text
name = undefined
