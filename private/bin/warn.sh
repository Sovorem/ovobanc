#!/bin/sh

# Այս script-ը տպում ա սիրուն warning հաղորդագրություններ
# ovobanc-ի style-ով branded

echo "============================================"
echo "============= OVOBANC WARNING =============="
echo "============================================"
echo "$WARN_MESSAGE"
echo "============================================"
echo "From: $WARN_FROM_NAME"
echo "============================================"

if [ -z "$WARN_MESSAGE" ]; then
    echo "WARN_MESSAGE-ը set արած չի։ Դուրս ենք գալիս error-ով։"
    exit 69
fi

if [ -z "$WARN_FROM_NAME" ]; then
    echo "WARN_FROM_NAME-ը set արած չի։ Դուրս ենք գալիս error-ով։"
    exit 69
fi
