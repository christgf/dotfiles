#!/usr/bin/env zsh
#
# Functions and scripts.

# Switch between JDK runtimes.
#
# Provided a JDK version as an argument the function will set JAVA_HOME to the
# JDK version path, update corresponding environment variables, and print the
# active JDK version. 
#
# Examples: 
# 	jenv 1.8
# 	jenv 1.11
# 	jenv 1.17
#
function jenv() {
    if [[ $argv = *[!\ ]* ]]; then
	export JAVA_HOME=$(/usr/libexec/java_home -v $argv);
	export PATH=$JAVA_HOME/bin:$PATH;
	launchctl setenv JAVA_HOME $JAVA_HOME;
    fi
    java -version;
}

