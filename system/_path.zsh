export JAVA_OPTS='-Xmx2048m -Dsun.lang.ClassLoader.allowArraySyntax=true'

export MAVEN_HOME="/usr/local/bin/mvn"
export MAVEN_OPTS='-Xmx2048m -XX:ReservedCodeCacheSize=128m -Dsun.lang.ClassLoader.allowArraySyntax=true'

export PATH="~/.rbenv/bin:~/bin:~/bin/platform-tools:./bin:$HOME/.local/bin:/usr/local:/usr/local/bin:/usr/local/sbin:$ZSH/bin:$PATH:$MAVEN_HOME:$JAVA_HOME"
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"
eval "$(rbenv init -)"
