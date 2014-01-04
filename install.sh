#!/bin/bash

sudo mv oakleon.service /media/state/units
sudo systemctl daemon-reload
sudo systemctl restart local-enable.service
docker ps
