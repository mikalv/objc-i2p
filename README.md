# Objective-C I2P (No makefile / xcode project yet)

## How?

* Download j2objc from a link somewhere at https://developers.google.com/j2objc/
* Be ready to comment out some code from `core/java/src/net/i2p/util/ShellCommand.java` - that file won't compile without some manual removal/commenting of code.
* Run a command somewhat alike this: `../j2objc-2.2/j2objc -classpath /Library/Java/JavaVirtualMachines/jdk1.8.0_181.jdk/Contents/Home/jre/lib/resources.jar:/Library/Java/JavaVirtualMachines/jdk1.8.0_181.jdk/Contents/Home/jre/lib/rt.jar:build/libs/i2p.i2p.jar:build/*.jar -v -l jre_emul -l jre_core -l jre_security -l jre_ssl -l jre_net -d objc-out -sourcepath router/java/src -x objective-c++ --swift-friendly --build-closure core/java/src/**/*.java router/java/src/**/*.java`

# Notes

* The repo has a copy of some source from Oracle Java stdlib, javax.naming
* It's not really needed, but hasn't factored it out yet - adding it was more a PoC that the whole router would compile/translate.


