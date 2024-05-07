CFLAGS := "-I./src/"
ARENA_OBJ_FILE := "arena.o"
ARENA_EXAMPLE := "arena-example"

default: run-arena-example clean

run-arena-example:
  gcc -o {{ARENA_OBJ_FILE}} -c src/arena.c
  gcc -o {{ARENA_EXAMPLE}} arena.o bin/examples/{{ARENA_EXAMPLE}}.c {{CFLAGS}}
  ./{{ARENA_EXAMPLE}}

clean:
  rm {{ARENA_OBJ_FILE}}
  rm {{ARENA_EXAMPLE}}
