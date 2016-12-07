{-# LANGUAGE TemplateHaskell
           , MultiParamTypeClasses
           , TypeFamilies
           , OverloadedStrings
           , CPP
           #-}

module Aws.Ec2.Commands.DescribeAvailabilityZones where

import Aws.Ec2.TH

data DescribeAvailabilityZones = DescribeAvailabilityZones [Text]
                       deriving (Show)

EC2VALUETRANSACTIONDEF(DescribeAvailabilityZones,"DescribeAvailabilityZones","availabilityZoneInfo","ZoneName")
