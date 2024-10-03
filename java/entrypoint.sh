#!/bin/bash

# Copyright (c) 2024 Mac Gould and contributors
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

cd /home/container

# Print current Java version
JAVA_VER=`java -version 2>&1 | head -1 | cut -d'"' -f2 | sed '/^1\./s///'`
echo "Java version: ${JAVA_VER}"

# Make internal Docker IP address available to processes
export INTERNAL_IP=`ip route get 1 | awk '{print $(NF-2);exit}'`

# Replace startup variables.
MODIFIED_STARTUP=$(echo "${STARTUP}" | sed -e 's/{{/${/g' -e 's/}}/}/g' | eval echo "$(cat -)")

# Check if startup command has -Dterminal.jline=false -Dterminal.ansi=true
JLINE_ARGS=$(echo ${MODIFIED_STARTUP} | grep -o "\-Dterminal.jline=false -Dterminal.ansi=true")
TIMEZONE_INUSE=$(echo ${MODIFIED_STARTUP} | grep -o "\-Duser.timezone=")

Print startup command to console
echo -e "Andromeda Docker Service: ${MODIFIED_STARTUP}"

# Run the server.
exec env ${MODIFIED_STARTUP}