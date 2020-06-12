## Developing using maven
CLIJ2 uses the maven build system. In order to develop CLIJ2, use git to get the recent version and maven to build it: 

Clone the clij2 repository
```
git clone https://github.com/clij/clij2
```

Open pom.xml and enter the path of your Fiji installation in the line containing

```
<imagej.app.directory>C:/path/to/Fiji.app
```

Go to the source dir and install it to your Fiji.app

```
cd clij2
mvn install
```

For development it is recommended to use an integrated development environment such as IntelliJ or Eclipse.

[Back to CLIJ documentation](https://clij.github.io/)

[Imprint](https://clij.github.io/imprint)

