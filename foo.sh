#!/bin/bash

foo(){
	find "$1" -type f -printf '%T@ %p\n' | sort -nr | tail -n "$2"
	find "$1" -type f -printf '%T@ %p\n' | sort -nr | head -n "$2"
}
