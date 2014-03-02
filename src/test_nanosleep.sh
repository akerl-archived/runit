#!/bin/sh -e
if gcc -o test_nanosleep test_nanosleep.c >/dev/null 2>&1 && ./test_nanosleep; then
  rm -f test_nanosleep
  echo 'CFLAGS+=-DHAVE_NANOSLEEP; export CFLAGS'
fi
