#!/bin/bash
Recipient=”krishnareddymaram216@gmail.com”
Subject=”Greeting”
Message=”Welcome to our site”
`mail -s $Subject $Recipient <<< $Message`
