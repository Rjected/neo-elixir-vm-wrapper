#!/bin/bash

set -e

CURRENT_NAME="NeoElixirVimWrapper"
CURRENT_OTP="neo_elixir_vim_wrapper"

NEW_NAME="NeoElixirVmWrapper"
NEW_OTP="neo_elixir_vm_wrapper"

ack -l $CURRENT_NAME | xargs sed -i '' -e "s/$CURRENT_NAME/$NEW_NAME/g"
ack -l $CURRENT_OTP | xargs sed -i '' -e "s/$CURRENT_OTP/$NEW_OTP/g"

mv lib/$CURRENT_OTP lib/$NEW_OTP
mv lib/$CURRENT_OTP.ex lib/$NEW_OTP.ex
