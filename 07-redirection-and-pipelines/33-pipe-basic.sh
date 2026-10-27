#!/usr/bin/env bash

echo "Day 07 - Pipe Operator"

echo "Number of files and directories:"
ls | wc -l

echo "Shell processes:"
ps | grep bash
