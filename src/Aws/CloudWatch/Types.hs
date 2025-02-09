{-# OPTIONS -Wno-name-shadowing #-}
{-# LANGUAGE TemplateHaskell  #-}

module Aws.CloudWatch.Types where

import Aws.TH
import Data.Monoid (mconcat) -- needed by derivePatchedShowRead

data Unit = Seconds
          | Microseconds
          | Milliseconds
          | Bytes
          | Kilobytes
          | Megabytes
          | Gigabytes
          | Terabytes
          | Bits
          | Kilobits
          | Megabits
          | Gigabits
          | Terabits
          | Percent
          | Count
          | BytesPerSecond
          | KilobytesPerSecond
          | MegabytesPerSecond
          | GigabytesPerSecond
          | TerabytesPerSecond
          | BitsPerSecond
          | KilobitsPerSecond
          | MegabitsPerSecond
          | GigabitsPerSecond
          | TerabitsPerSecond
          | CountPerSecond
          | None
          deriving (Eq, Enum)

derivePatchedShowRead ''Unit patchPer
