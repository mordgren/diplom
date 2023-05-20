#!/bin/bash
sudo usermod -a -G sudo gitlab-runner && echo "gitlab-runner ALL=(ALL) NOPASSWD: ALL" | sudo EDITOR='tee -a' visudo