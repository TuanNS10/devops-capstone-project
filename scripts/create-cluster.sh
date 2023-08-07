#!/bin/bash

eksctl create cluster \
--name CapstoneEKS-0F65GHTX4FHN \
--version 1.25 \
--region us-east-1a \
--node-type t2.small \
--nodes 3 \
--nodes-min 1 \
--nodes-max 4 
--managed \
--profile udacity

eksctl get cluster --name=CapstoneEKS-0F65GHTX4FHN