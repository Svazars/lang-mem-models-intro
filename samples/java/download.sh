
# instructions below are valid for java 8 for linux_amd64

# 1. get hsdis
wget https://builds.shipilev.net/hsdis/hsdis-amd64.so
# you could build it from sources, but I am lazy


# 2. visit https://adoptium.net/, select java 8 for linux_amd64
# you could build it from sources or install via your package manager or get Oracle distribution. But, as I already said, I am lazy


# 3. move hsdis.so into <jdk>/jre/lib/amd64

# 4. compile app
# <jdk>/bin/javac Sample.java

# 5. run app
# <jdk>/bin/java -XX:+UnlockDiagnosticVMOptions -XX:+PrintAssembly -XX:PrintAssemblyOptions=intel -XX:-Inline Sample
# please note that these options are intended just to fool around with simple methods, not to actually do performance analysis or deep JIT investigation
