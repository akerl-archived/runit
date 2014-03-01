#!/bin/sh
for ENV_FILE in env.*; do
  if [ "$ENV_FILE" != 'env.sh' ] && [ "$ENV_FILE" != 'env.h' ] \
  && [ "$ENV_FILE" != 'env.c' ] && [ "$ENV_FILE" != 'env.o' ]; then
    MATCH="$(echo $ENV_FILE | sed 's/^env\.//')"
    if grep -q "$MATCH" systype; then
      cat $ENV_FILE
    fi
  fi
done
