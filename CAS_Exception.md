# Introduction #

```
An attempt was made to load an assembly from a network location which 
would have caused the assembly to be sandboxed in previous versions 
of the .NET Framework. This release of the .NET Framework does 
not enable CAS policy by default, so this load may be dangerous. 
If this load is not intended to sandbox the assembly, please enable the loadFromRemoteSources 
switch. See http://go.microsoft.com/fwlink/?LinkId=155569 for more information.
```

This protection prevents any DLL is dynamically accessed from remote locations as your Local Network for example. If your SEA3D is shared over a network or shared drive will be necessary perform the procedures below.

# Solution #

The solution is to add this line of code in the initial configuration of 3ds Max **3dsmax.exe.config** (../Autodesk/3ds Max/3dsmax.exe.config).

```
<runtime>         
    <loadFromRemoteSources enabled="true"/>
</runtime>
```

**Example** http://sea3d.googlecode.com/svn/resources/3dsmax.exe.config

Or following the instructions below.

## 1. Download the file: ##

**Download** http://code.google.com/p/sea3d/source/browse/resources/3dsmax.exe.config

## 2. Replace the file: ##

../Autodesk/3ds Max/3dsmax.exe.config

## 3. Restart 3ds Max ##