CFLAGS := "-I./src/"

default: run-arena-example clean

run-arena-example:
  cc bin/examples/arena.c -o arena-example {{CFLAGS}} && ./arena-example

clean:
  rm arena-example
