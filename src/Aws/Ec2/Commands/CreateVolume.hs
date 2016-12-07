{-# LANGUAGE TypeFamilies
           , MultiParamTypeClasses
           , FlexibleInstances
           , OverloadedStrings
           , RecordWildCards
           , TemplateHaskell
           , CPP
           #-}

module Aws.Ec2.Commands.CreateVolume where

import Data.Text (Text)
import Data.Monoid
import Aws.Ec2.TH

data CreateVolume = CreateVolume
               { cvol_AvailabilityZone :: Text
               , cvol_ebs :: EbsBlockDevice
               } deriving (Show)

instance SignQuery CreateVolume where
    type ServiceConfiguration CreateVolume = EC2Configuration
    signQuery CreateVolume{..} = ec2SignQuery $ [ ("Action", qArg "CreateVolume")
                                                , defVersion
                                                , ("AvailabilityZone", qArg cvol_AvailabilityZone)
                                                ] ++ queryEbsBlockDevice cvol_ebs

EC2VALUETRANSACTION(CreateVolume,"CreateVolumeResponse")
