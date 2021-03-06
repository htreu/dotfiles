## SDKs ##
#export JAVA_6_HOME=`/usr/libexec/java_home -v 1.6`
export JAVA_7_HOME=`/usr/libexec/java_home -v 1.7`
export JAVA_8_HOME=`/usr/libexec/java_home -v 1.8`
export JAVA_HOME=$JAVA_7_HOME
#export GROOVY_HOME=/usr/local/Cellar/groovy/2.3.7/libexec

#export GOPATH=~/.gopath

#export MYSQL_HOME=/usr/local/Cellar/mysql55/5.5.30

## PATH ##
export PATH=/usr/local/bin:/usr/local/sbin:$JAVA_HOME/bin:$PATH

export MAVEN_OPTS="-Xmx512m -XX:MaxPermSize=128m"

export SVN_EDITOR=vim
